package com.squareup.square_mobile_payments_sdk.extensions

import com.squareup.sdk.mobilepayments.payment.Payment
import com.squareup.sdk.mobilepayments.payment.Money
import com.squareup.sdk.mobilepayments.payment.Card
import com.squareup.sdk.mobilepayments.payment.CardPaymentDetails
import com.squareup.sdk.mobilepayments.payment.ExternalPaymentDetails
import com.squareup.sdk.mobilepayments.payment.PaymentProcessingFee
import com.squareup.sdk.mobilepayments.payment.SquareAccountDetails
import com.squareup.sdk.mobilepayments.core.ErrorDetails
import com.squareup.sdk.mobilepayments.payment.DigitalWalletDetails
import com.squareup.sdk.mobilepayments.payment.CashPaymentDetails

import java.text.SimpleDateFormat
import java.util.Date
import java.util.TimeZone

fun Payment.SourceType.toName(): String {
  return when (this) {
    Payment.SourceType.CARD -> "card"
    Payment.SourceType.CASH -> "cash"
    Payment.SourceType.EXTERNAL -> "externalSource"
    Payment.SourceType.WALLET -> "wallet"
    Payment.SourceType.BANK_ACCOUNT -> "bankAccount"
    Payment.SourceType.CARD_ON_FILE -> "cardOnFile"
    Payment.SourceType.SQUARE_ACCOUNT -> "squareAccount"
    else -> "unknown"
  }
}

fun Payment.OfflineStatus.toOfflineStatusName(): String {
  return when (this) {
    Payment.OfflineStatus.QUEUED -> "queued"
    Payment.OfflineStatus.UPLOADED -> "uploaded"
    Payment.OfflineStatus.FAILED_TO_UPLOAD -> "failedToUpload"
    Payment.OfflineStatus.FAILED_TO_PROCESS -> "failedToProcess"
    Payment.OfflineStatus.PROCESSED -> "processed"
    else -> "unknown"
  }
}

fun CardPaymentDetails.EntryMethod.toEntryMethodName(): String {
  return when (this) {
    CardPaymentDetails.EntryMethod.KEYED -> "keyed"
    CardPaymentDetails.EntryMethod.SWIPED -> "swiped"
    CardPaymentDetails.EntryMethod.EMV -> "emv"
    CardPaymentDetails.EntryMethod.CONTACTLESS -> "contactless"
    CardPaymentDetails.EntryMethod.ON_FILE -> "onFile"
    else -> "unknown"
  }
}

fun Card.Brand.toBrandName(): String {
  return when (this) {
    Card.Brand.OTHER_BRAND -> "otherBrand"
    Card.Brand.VISA -> "visa"
    Card.Brand.MASTERCARD -> "mastercard"
    Card.Brand.AMERICAN_EXPRESS -> "americanExpress"
    Card.Brand.DISCOVER -> "discover"
    Card.Brand.DISCOVER_DINERS -> "discoverDiners"
    Card.Brand.EBT -> "ebt"
    Card.Brand.JCB -> "jcb"
    Card.Brand.CHINA_UNIONPAY -> "chinaUnionPay"
    Card.Brand.SQUARE_GIFT_CARD -> "squareGiftCard"
    Card.Brand.ALIPAY -> "alipay"
    Card.Brand.CASH_APP -> "cashApp"
    Card.Brand.EFTPOS -> "eftpos"
    Card.Brand.FELICA -> "felica"
    Card.Brand.INTERAC -> "interac"
    Card.Brand.SQUARE_CAPITAL_CARD -> "squareCapitalCard"
    Card.Brand.SUICA -> "suica"
    Card.Brand.ID -> "id"
    Card.Brand.QUICPAY -> "quicpay"
    else -> "unknown"
  }
}

fun Payment.OfflinePayment.toOfflineMap(): Map<String, Any?> {
    return mapOf(
      "createdAt" to createdAt.toISO8601String(),
      "updatedAt" to updatedAt.toISO8601String(),
      "amountMoney" to amountMoney.toMoneyMap(),
      "tipMoney" to amountMoney?.toMoneyMap(),
      "appFeeMoney" to appFeeMoney?.toMoneyMap(),
      "locationId" to locationId,
      "orderId" to orderId,
      "referenceId" to referenceId,
      "sourceType" to sourceType.toName(), //* ignore in dat models
      "cashDetails" to cashDetails?.toCashDetailsMap(), //*
      "externalDetails" to externalDetails?.toExternalDetailsMap(),//*
      "uploadedAt" to uploadedAt?.toISO8601String(),
      "localId" to localId,
      "id" to id,
      "status" to status.toOfflineStatusName(),
      "cardDetails" to cardDetails?.toOfflineDetailsMap(),
      "totalMoney" to totalMoney?.toMoneyMap()
    )
  }

  fun Payment.OnlinePayment.toOnlineMap(): Map<String, Any?> {
    return mapOf(
      "createdAt" to createdAt.toISO8601String(),
      "updatedAt" to updatedAt.toISO8601String(),
      "locationId" to locationId,
      "amountMoney" to amountMoney.toMoneyMap(),
      "tipMoney" to tipMoney?.toMoneyMap(),
      "appFeeMoney" to appFeeMoney?.toMoneyMap(),
      "orderId" to orderId,
      "referenceId" to referenceId,
      "sourceType" to sourceType.toName(),
      "cashDetails" to cashDetails?.toCashDetailsMap(),
      "externalDetails" to externalDetails?.toExternalDetailsMap(),
      "id" to id,
      "processingFee" to processingFee.map { it.toProcessingFeeMap() },
      "status" to status.name,
      "cardDetails" to cardDetails?.toOnlineDetailsMap(),
      "customerId" to customerId,
      "note" to note,
      "statementDescription" to statementDescription,
      "teamMemberId" to teamMemberId,
      //"capabilities" to capabilities.toMap(),
      "receiptNumber" to receiptNumber,
      "remainingBalance" to remainingBalance?.toMoneyMap(),
      "squareAccountDetails" to squareAccountDetails?.toAccountMap(),
      "digitalWalletDetails" to digitalWalletDetails?.toWalletMap(),

      "totalMoney" to totalMoney?.toMoneyMap()
    )
  }

  fun Money.toMoneyMap(): Map<String, Any?> {
    return mapOf(
      "amount" to amount,
      "currencyCode" to currencyCode.name.toLowerCase() // to build Money Dart obj
    )
  }

  fun CashPaymentDetails.toCashDetailsMap(): Map<String, Any?> {
    return mapOf(
      "changeBackMoney" to changeBackMoney.toMoneyMap(),
      "buyerSuppliedMoney" to buyerSuppliedMoney.toMoneyMap()
    )
  }

  fun ExternalPaymentDetails.toExternalDetailsMap(): Map<String, Any?> {
    return mapOf(
      "type" to type,
      "source" to source,
      "sourceId" to sourceId,
      "sourceFeeMoney" to sourceFeeMoney?.toMoneyMap()
    )
  }

  fun CardPaymentDetails.OfflineCardPaymentDetails.toOfflineDetailsMap(): Map<String, Any?> {
    return mapOf(
      "card" to card.toCardMap(),
      "entryMethod" to entryMethod.toEntryMethodName(),
      "applicationIdentifier" to applicationId,
      "applicationName" to applicationName
    )
  }

  fun Card.toCardMap(): Map<String, Any?> {
    return mapOf(
      "brand" to brand.name,
      "coBrand" to cardCoBrand.name,
      "lastFourDigits" to lastFourDigits,
      "expirationMonth" to expirationMonth,
      "expirationYear" to expirationYear,
      "cardholderName" to cardholderName,
      "id" to id,
      "bin" to bin
    )
  }


  fun DigitalWalletDetails.toWalletMap(): Map<String, Any?> {
    return mapOf(
      "walletBrand" to walletBrand?.name,
      "buyerId" to buyerId
    )
  }

  fun SquareAccountDetails.toAccountMap(): Map<String, Any?> {
    return mapOf(
      "paymentSourceToken" to paymentSourceToken,
      "errors" to errors?.map { it.toErrorMap() }
    )
  }

  fun ErrorDetails.toErrorMap(): Map<String, Any?> {
    return mapOf(
      "category" to category,
      "code" to code,
      "detail" to detail,
      "field" to field
    )
  }

  fun PaymentProcessingFee.toProcessingFeeMap(): Map<String, Any?> {
    return mapOf(
      "effectiveAt" to effectiveAt.time.toString(),
      "type" to type.name,
      "amountMoney" to amountMoney.toMoneyMap()
    )
  }

  fun CardPaymentDetails.OnlineCardPaymentDetails.toOnlineDetailsMap(): Map<String, Any?> {
    return mapOf(
      "status" to status.name,
      "card" to card.toCardMap(),
      "entryMethod" to entryMethod.name,
      "authorizationCode" to authorizationCode,
      "applicationId" to applicationId,
      "applicationName" to applicationName,
      "applicationCounter" to applicationCounter,
      "panSequenceNumber" to panSequenceNumber,
      "verificationMethod" to verificationMethod?.name,
      "verificationResults" to verificationResults?.name,
      "accountType" to accountType?.name,
      "remainingBalanceAmountMoney" to remainingBalanceAmountMoney?.toMoneyMap(),
      "felicaSprwdId" to felicaSprwdId
    )
  }

  fun Date.toISO8601String(): String {
    val isoFormat = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    isoFormat.timeZone = TimeZone.getTimeZone("UTC")
    return isoFormat.format(this)
  }