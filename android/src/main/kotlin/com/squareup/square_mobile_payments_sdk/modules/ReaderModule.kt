package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.EventChannel.EventSink
import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.core.Result as SdkResult
import com.squareup.sdk.mobilepayments.core.CallbackReference
import com.squareup.sdk.mobilepayments.cardreader.PairingHandle
import com.squareup.sdk.mobilepayments.cardreader.PairingHandle.StopResult
import com.squareup.sdk.mobilepayments.mockreader.ui.MockReaderUI
import com.squareup.square_mobile_payments_sdk.extensions.toReaderInfoMap
import com.squareup.square_mobile_payments_sdk.extensions.toChangedEventMap
import com.squareup.square_mobile_payments_sdk.extensions.toStopResultName
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.settings.Environment

class ReaderModule {
    companion object {
        private val authManager = MobilePaymentsSdk.authorizationManager()
        private val settingsManager = MobilePaymentsSdk.settingsManager()

        private val readerManager = MobilePaymentsSdk.readerManager()
        private var globalReaderCallbackReference: CallbackReference? = null
        private var globalPairingHandle: PairingHandle? = null

        @JvmStatic
        fun showMockReaderUI(result: MethodChannel.Result) {
            try {
                MockReaderUI.show() 
                result.success(null)
            } catch (e: IllegalStateException) {
                // first invalid Id
                val errorMessage = e.message ?: "Unknown error"
                val errorCode = when {
                    settingsManager.getSdkSettings().sdkEnvironment == Environment.SANDBOX -> "invalidApplicationId"
                    !authManager.authorizationState.isAuthorized -> "notAuthorized"
                    else -> "unknown"
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
        fun isPairingInProgress(result: MethodChannel.Result) {
            result.success(readerManager.isPairingInProgress)
        }

        @JvmStatic
        fun setReaderChangedCallback(result: MethodChannel.Result, sink: EventSink?) {
            if (globalReaderCallbackReference == null) {
                globalReaderCallbackReference = readerManager.setReaderChangedCallback {
                    changedEvent ->
                        sink?.success(mapOf(
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
            globalPairingHandle = readerManager.pairReader {
                pairingResult ->
                    when(pairingResult) {
                        is SdkResult.Success -> {
                            result.success(pairingResult.value)
                        }
                        is SdkResult.Failure -> {
                            result.error("PAIRING_ERROR", "pairing error", null)
                        }
                        else -> {result.error("PAIRING_ERROR", "pairing error", null)}
                    }
            }
        }

        @JvmStatic
        fun stopPairing(result: MethodChannel.Result) {
            if (globalPairingHandle != null) {
                val stopResult = globalPairingHandle?.stop()
                globalPairingHandle = null
                result.success(stopResult?.toStopResultName())
            }
        }
    }
}
