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

fun Payment.SourceType.toName(): String {
  return when (this) {
    Payment.SourceType.CARD -> "card"
    Payment.SourceType.CASH -> "cash"
    Payment.SourceType.EXTERNAL -> "externalSource"
    Payment.SourceType.WALLET -> "wallet"
    Payment.SourceType.BANK_ACCOUNT -> "bankAccount"
    Payment.SourceType.CARD_ON_FILE -> "unknown" // Not defined in dart models
    Payment.SourceType.SQUARE_ACCOUNT -> "squareAccount"
    else -> "unknown"
  }
}

fun Payment.OfflinePayment.toOfflineMap(): Map<String, Any?> {
    return mapOf(
      "createdAt" to createdAt.time.toString(),
      "updatedAt" to updatedAt.time.toString(),
      "amountMoney" to amountMoney.toMoneyMap(),
      "tipMoney" to amountMoney?.toMoneyMap(),
      "appFeeMoney" to appFeeMoney?.toMoneyMap(),
      "locationId" to locationId,
      "orderId" to orderId,
      "referenceId" to referenceId,
      "sourceType" to sourceType.toName(),
      "cashDetails" to cashDetails?.toCashDetailsMap(),
      "externalDetails" to externalDetails?.toExternalDetailsMap(),
      "uploadedAt" to uploadedAt?.time.toString(),
      "localId" to localId,
      "id" to id,
      "status" to status.name,
      "cardDetails" to cardDetails?.toOfflineDetailsMap(),
      "totalMoney" to totalMoney?.toMoneyMap()
    )
  }
  
  fun Payment.OnlinePayment.toOnlineMap(): Map<String, Any?> {
    return mapOf(
      "createdAt" to createdAt.time.toString(),
      "updatedAt" to updatedAt.time.toString(),
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
      "entryMethod" to entryMethod.name,
      "applicationId" to applicationId,
      "applicationName" to applicationName
    )
  }
  
  fun Card.toCardMap(): Map<String, Any?> {
    return mapOf(
      "brand" to brand.name,
      "cardCoBrand" to cardCoBrand.name,
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