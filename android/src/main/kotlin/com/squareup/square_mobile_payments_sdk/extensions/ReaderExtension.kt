package com.squareup.square_mobile_payments_sdk.extensions

import com.squareup.sdk.mobilepayments.cardreader.CardEntryMethod
import com.squareup.sdk.mobilepayments.cardreader.ReaderInfo

fun ReaderInfo.toReaderInfoMap(): Map<String, Any?> {
    return mapOf(
        "id" to id,
        "model" to model.toModelName(),
        "state" to state.toStateName(),
        "serialNumber" to serialNumber,
        "name" to name,
        "batteryStatus" to batteryStatus?.toBatteryStatusMap(),
        "firmwareInfo" to mapOf(
            "version" to firmwareVersion,
            "updatePercentage" to (firmwarePercent ?: 0),
        ),
        "supportedInputMethods" to supportedCardEntryMethods.map { it.toEntryMethodName() },
        "isForgettable" to isForgettable,
        "isBlinkable" to isBlinkable
    )
}

fun ReaderInfo.Model.toModelName(): String {
  return when(this) {
    ReaderInfo.Model.MAGSTRIPE -> "magstripe"
    ReaderInfo.Model.CONTACTLESS_AND_CHIP -> "contactlessAndChip"
    ReaderInfo.Model.TAP_TO_PAY -> "tapToPay"
  }
}

fun ReaderInfo.State.toStateName(): String {
  return when(this) {
    is ReaderInfo.State.Ready ->"ready"
    is ReaderInfo.State.Disabled ->"disabled"
    is ReaderInfo.State.Connecting ->"connecting"
    is ReaderInfo.State.Disconnected ->"disconnected"
    is ReaderInfo.State.FailedToConnect->"failedToConnect"
    is ReaderInfo.State.UpdatingFirmware ->"updatingFirmware"
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