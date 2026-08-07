package com.squareup.square_mobile_payments_sdk.extensions

import com.squareup.sdk.mobilepayments.cardreader.CardEntryMethod
import com.squareup.sdk.mobilepayments.cardreader.PairingHandle.StopResult
import com.squareup.sdk.mobilepayments.cardreader.ReaderChangedEvent
import com.squareup.sdk.mobilepayments.cardreader.ReaderInfo
import com.squareup.sdk.mobilepayments.cardreader.ReaderSettings
import com.squareup.sdk.mobilepayments.core.TimeOfDay
import java.util.Date
import java.util.Locale
import java.util.TimeZone
import java.text.SimpleDateFormat

fun ReaderInfo.toReaderInfoMap(): Map<String, Any?> {
    return mapOf(
        "id" to id,
        "model" to model.toModelName(),
        "serialNumber" to serialNumber,
        "name" to name,
        "connectionType" to connectionType.toConnectionTypeName(),
        "batteryStatus" to batteryStatus?.toBatteryStatusMap(),
        "firmwareInfo" to firmwareInfo.toFirmwareInfoMap(),
        "supportedInputMethods" to supportedCardEntryMethods.map { it.toEntryMethodName() },
        "isForgettable" to isForgettable,
        "isBlinkable" to isBlinkable,
        "statusInfo" to status.toStatusMap()
    )
}

fun ReaderInfo.ConnectionType.toConnectionTypeName(): String {
    return when (this) {
        ReaderInfo.ConnectionType.USB -> "usb"
        ReaderInfo.ConnectionType.BLUETOOTH -> "bluetooth"
        ReaderInfo.ConnectionType.AUDIO -> "audio"
        ReaderInfo.ConnectionType.EMBEDDED -> "embedded"
    }
}

fun ReaderInfo.ReaderFirmwareInfo.toFirmwareInfoMap(): Map<String, Any?> {
    return mapOf(
        "version" to version,
        "updateStatus" to updateStatus.toUpdateStatusName(),
        "updatePercentage" to updateStatus.toPercent(),
        "updateTime" to updateStatus.toUpdateTime()
    )
}

fun ReaderInfo.FirmwareUpdateStatus.toUpdateStatusName(): String {
   return when (this) {
     is ReaderInfo.FirmwareUpdateStatus.InProgress -> "inProgress"
     is ReaderInfo.FirmwareUpdateStatus.None -> "none"
     is ReaderInfo.FirmwareUpdateStatus.Pending -> "pending"
   }
}

fun ReaderInfo.FirmwareUpdateStatus.toPercent(): Int? {
   return  when (this) {
     is ReaderInfo.FirmwareUpdateStatus.InProgress -> this.updatePercentage
     is ReaderInfo.FirmwareUpdateStatus.None -> null
     is ReaderInfo.FirmwareUpdateStatus.Pending -> null
   }
}

fun ReaderInfo.FirmwareUpdateStatus.toUpdateTime(): String? {
   return when (this) {
     is ReaderInfo.FirmwareUpdateStatus.InProgress -> null
     is ReaderInfo.FirmwareUpdateStatus.None -> null
     is ReaderInfo.FirmwareUpdateStatus.Pending -> toISO8601String(this.updateDate)
   }
}

fun ReaderInfo.Status.toStatusMap(): Map<String, Any?> {
    return mapOf(
        "status" to this.toStatusName(),
        "unavailableReason" to  this.getUnavailableReasonNameOrNull(),
    );
}

fun  ReaderInfo.Status.getUnavailableReasonNameOrNull(): String? {
    if (this !is ReaderInfo.Status.ReaderUnavailable) {
        return null
    }
    return this.toUnavailableReasonName();
}

fun ReaderInfo.Status.ReaderUnavailable.toUnavailableReasonName(): String {
    return when (this.reason) {
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.INTERNAL_ERROR -> "internalError"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.BLUETOOTH_DISABLED -> "bluetoothDisabled"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.BLUETOOTH_FAILURE -> "bluetoothFailure"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.SECURE_CONNECTION_TO_SQUARE_FAILURE -> "secureConnectionToSquareFailure"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.SECURE_CONNECTION_NETWORK_FAILURE -> "secureConnectionNetworkFailure"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.OFFLINE_SESSION_EXPIRED -> "offlineSessionExpired"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.READER_UNAVAILABLE_OFFLINE -> "readerUnavailableOffline"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.OFFLINE_MODE_DISABLED -> "offlineModeDisabled"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.READER_UPDATE_FAILED -> "readerUpdateFailed"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.BLOCKING_UPDATE -> "blockingUpdate"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.MERCHANT_SUSPENDED -> "merchantSuspended"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.MERCHANT_INELIGIBLE -> "merchantIneligible"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.MERCHANT_NOT_ACTIVATED -> "merchantNotActivated"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.DEVICE_NOT_SUPPORTED -> "deviceNotSupported"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.READER_FIRMWARE_UPDATE_REQUIRED -> "readerFirmwareUpdateRequired"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.READER_NOT_SUPPORTED -> "readerNotSupported"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.DEVICE_ROOTED -> "deviceRooted"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.DEVICE_DEVELOPER_MODE -> "deviceDeveloperMode"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.DISABLED -> "disabled"
        ReaderInfo.Status.ReaderUnavailable.ReaderUnavailableReason.HOST_ID_MISMATCH -> "hostIdMismatch"
    }
}

fun ReaderInfo.Status.toStatusName(): String {
    return when (this) {
        is ReaderInfo.Status.ConnectingToDevice -> "connectingToDevice"
        is ReaderInfo.Status.ConnectingToSquare -> "connectingToSquare"
        is ReaderInfo.Status.ReaderUnavailable -> "readerUnavailable"
        is ReaderInfo.Status.Faulty -> "faulty"
        is ReaderInfo.Status.Ready -> "ready"
    }
}

fun ReaderInfo.Model.toModelName(): String {
  return when(this) {
    ReaderInfo.Model.MAGSTRIPE -> "magstripe"
    ReaderInfo.Model.CONTACTLESS_AND_CHIP -> "contactlessAndChip"
    ReaderInfo.Model.TAP_TO_PAY -> "tapToPay"
  }
}
fun ReaderInfo.BatteryStatus.toBatteryStatusMap(): Map<String, Any> {
    return mapOf(
        "isCharging" to isCharging,
        "percentage" to percent
    )
}

fun CardEntryMethod.toEntryMethodName(): String {
  return when(this) {
    CardEntryMethod.EMV -> "emv"
    CardEntryMethod.SWIPED -> "swiped"
    CardEntryMethod.CONTACTLESS -> "contactless"
  }
}

fun ReaderChangedEvent.toChangedEventMap(): Map<String, Any> {
  return mapOf(
    "change" to change.toChangeName(),
    "reader" to reader.toReaderInfoMap()
  )
}

fun ReaderChangedEvent.Change.toChangeName(): String {
  return when(this) {
    ReaderChangedEvent.Change.ADDED -> "added"
    ReaderChangedEvent.Change.CHANGED_STATE -> "changedState"
    ReaderChangedEvent.Change.BATTERY_THRESHOLD -> "batteryThreshold"
    ReaderChangedEvent.Change.BATTERY_CHARGING -> "batteryCharging"
    ReaderChangedEvent.Change.FIRMWARE_PROGRESS -> "firmwareProgress"
    ReaderChangedEvent.Change.REMOVED -> "removed"
  }
}

fun StopResult.toStopResultName(): String {
  return when(this) {
    StopResult.ALREADY_COMPLETE -> "alreadyComplete"
    StopResult.STOPPED -> "stopped"
  }
}

fun ReaderSettings.toReaderSettingsMap(): Map<String, Any?> {
  return mapOf (
    "isReducedChargingModeEnabled" to isReducedChargingModeEnabled,
    "preferredFirmwareUpdateTime" to preferredFirmwareUpdateTime?.toTimeOfDayMap()
  )
}

fun TimeOfDay.toTimeOfDayMap(): Map<String, Int> {
  return mapOf (
    "hour" to hour,
    "minute" to minute
  )
}

fun toISO8601String(date: Date): String {
  val isoFormat = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.ROOT)
  isoFormat.timeZone = TimeZone.getTimeZone("UTC")
  return isoFormat.format(date)
}