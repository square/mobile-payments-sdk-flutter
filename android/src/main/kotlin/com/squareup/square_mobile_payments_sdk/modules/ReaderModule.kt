package com.squareup.square_mobile_payments_sdk.modules

import com.squareup.square_mobile_payments_sdk.SquareMobilePaymentsSdkPlugin
import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.core.Result as SdkResult
import com.squareup.sdk.mobilepayments.core.CallbackReference
import com.squareup.sdk.mobilepayments.core.TimeOfDay
import com.squareup.sdk.mobilepayments.cardreader.PairingHandle
import com.squareup.sdk.mobilepayments.cardreader.PairingHandle.StopResult
import com.squareup.sdk.mobilepayments.cardreader.RetryConnectionResult
import com.squareup.square_mobile_payments_sdk.extensions.toReaderInfoMap
import com.squareup.square_mobile_payments_sdk.extensions.toReaderSettingsMap
import com.squareup.square_mobile_payments_sdk.extensions.toChangedEventMap
import com.squareup.square_mobile_payments_sdk.extensions.toStopResultName
import com.squareup.square_mobile_payments_sdk.extensions.toRetryConnectionResultName
import com.squareup.square_mobile_payments_sdk.extensions.toPairingErrorCodeName
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.mockreader.ui.MockReaderUI
import com.squareup.sdk.mobilepayments.settings.Environment
import com.squareup.square_mobile_payments_sdk.extensions.toErrorDetailsMap

class ReaderModule {
    companion object {
        private val readerManager = MobilePaymentsSdk.readerManager()
        private var globalReaderCallbackReference: CallbackReference? = null
        private var globalPairingHandle: PairingHandle? = null
        // The Dart callback for the pairing in flight. Kept so `stopPairing` can settle it: the
        // native SDK does not call back when a pairing is stopped.
        private var pendingPairingResult: MethodChannel.Result? = null

        @JvmStatic
        fun showMockReaderUI(result: MethodChannel.Result) {
            val settingsManager = MobilePaymentsSdk.settingsManager()
            val authManager = MobilePaymentsSdk.authorizationManager()

            if (settingsManager.getSdkSettings().sdkEnvironment != Environment.SANDBOX) {
                result.error(
                    "invalidApplicationId",
                    "MockReaderUI is only available in the Sandbox environment.",
                    null,
                )
                return
            }

            if (!authManager.authorizationState.isAuthorized) {
                result.error(
                    "notAuthorized",
                    "MockReaderUI requires the SDK to be authorized.",
                    null,
                )
                return
            }

            try {
                MockReaderUI.show()
                result.success(null)
            } catch (e: IllegalStateException) {
                val errorMessage = e.message ?: "Unexpected error"
                val errorCode = when {
                    settingsManager.getSdkSettings().sdkEnvironment != Environment.SANDBOX -> "invalidApplicationId"
                    !authManager.authorizationState.isAuthorized -> "notAuthorized"
                    else -> "unexpected"
                }
                result.error(errorCode, errorMessage, null)
            }
        }

        @JvmStatic
        fun hideMockReaderUI(result: MethodChannel.Result) {
            MockReaderUI.hide()
            result.success(null)
        }

        @JvmStatic
        fun getReaders(result: MethodChannel.Result) {
            val readers = readerManager.getReaders()
            val readerList = mutableListOf<Map<String, Any?>>()
            readers.forEach { readerList.add(it.toReaderInfoMap()) }
            result.success(readerList)
        }

        @JvmStatic
        fun getReader(result: MethodChannel.Result, id: String) {
            val reader = readerManager.getReader(id)
            if(reader == null) {
                result.success(null)
                return
            }
            result.success(reader.toReaderInfoMap())
        }

        @JvmStatic
        fun forget(result: MethodChannel.Result, id: String) {
            val reader = readerManager.getReader(id)
            if(reader != null) {
                readerManager.forget(reader)
            }
            result.success(null)
        }

        @JvmStatic
        fun blink(result: MethodChannel.Result, id: String) {
            val reader = readerManager.getReader(id)
            if(reader != null) {
                readerManager.blink(reader)
            }
            result.success(null)
        }

        @JvmStatic
        fun retryConnection(result: MethodChannel.Result, id: String) {
            val reader = readerManager.getReader(id)
            if (reader == null) {
                result.success(RetryConnectionResult.READER_NOT_FOUND.toRetryConnectionResultName())
                return
            }
            result.success(readerManager.retryConnection(reader).toRetryConnectionResultName())
        }

        @JvmStatic
        fun setPreferredFirmwareUpdateTime(result: MethodChannel.Result, time: Map<String, Any?>?) {
            try {
                readerManager.readerSettings.preferredFirmwareUpdateTime = time?.let {
                    TimeOfDay((it["hour"] as Number).toInt(), (it["minute"] as Number).toInt())
                }
                result.success(null)
            } catch (e: IllegalArgumentException) {
                result.error("invalidTimeOfDay", e.message, null)
            }
        }

        @JvmStatic
        fun setReducedChargingModeEnabled(result: MethodChannel.Result, enabled: Boolean) {
            readerManager.readerSettings.isReducedChargingModeEnabled = enabled
            result.success(null)
        }

        @JvmStatic
        fun isPairingInProgress(result: MethodChannel.Result) {
            result.success(readerManager.isPairingInProgress)
        }

        @JvmStatic
        fun setReaderChangedCallback(result: MethodChannel.Result) {
            if (globalReaderCallbackReference == null) {
                globalReaderCallbackReference = readerManager.setReaderChangedCallback {
                    changedEvent ->
                        SquareMobilePaymentsSdkPlugin.eventSink?.success(mapOf(
                            "type" to "readerChange",
                            "payload" to changedEvent.toChangedEventMap()
                        ))
                }
                
            }
            result.success(null)
        }

        @JvmStatic
        fun removeReaderChangedCallback(result: MethodChannel.Result) {
            globalReaderCallbackReference?.clear()
            globalReaderCallbackReference = null
            result.success(null)
        }

        @JvmStatic
        fun pairReader(result: MethodChannel.Result) {
            if (globalPairingHandle != null) {
                // Starting a second pairing would hand us the SDK's failed handle and overwrite the
                // real one, so `stopPairing` could no longer stop the pairing that is running.
                result.error("readerAlreadyPairing", "A reader pairing is already in progress", null)
                return
            }
            pendingPairingResult = result
            globalPairingHandle = readerManager.pairReader {
                pairingResult ->
                    val pending = takePendingPairingResult() ?: return@pairReader
                    globalPairingHandle = null
                    when(pairingResult) {
                        is SdkResult.Success -> {
                            pending.success(pairingResult.value)
                        }
                        is SdkResult.Failure -> {
                            pending.error(
                                pairingResult.errorCode.toPairingErrorCodeName(),
                                pairingResult.errorMessage,
                                pairingResult.details.map { d -> d.toErrorDetailsMap() }
                            )
                        }
                    }
            }
        }

        @JvmStatic
        fun stopPairing(result: MethodChannel.Result) {
            val handle = globalPairingHandle
            if (handle != null) {
                val stopResult = handle.stop()
                globalPairingHandle = null
                // `false` with no error tells Dart the pairing ended without completing.
                takePendingPairingResult()?.success(false)
                result.success(stopResult.toStopResultName())
            } else {
                result.success(StopResult.ALREADY_COMPLETE.toStopResultName())
            }
        }

        /** Returns the pending pairing callback at most once, so it is never settled twice. */
        @Synchronized
        private fun takePendingPairingResult(): MethodChannel.Result? {
            val pending = pendingPairingResult
            pendingPairingResult = null
            return pending
        }

        @JvmStatic
        fun readerSettings(result: MethodChannel.Result) {
            result.success(readerManager.readerSettings.toReaderSettingsMap())
        }
    }
}
