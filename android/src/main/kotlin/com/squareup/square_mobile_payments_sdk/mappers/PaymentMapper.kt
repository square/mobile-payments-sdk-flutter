package com.squareup.square_mobile_payments_sdk.mappers

import com.squareup.sdk.mobilepayments.payment.AdditionalPaymentMethod
import com.squareup.sdk.mobilepayments.payment.CurrencyCode
import com.squareup.sdk.mobilepayments.payment.DelayAction
import com.squareup.sdk.mobilepayments.payment.Money
import com.squareup.sdk.mobilepayments.payment.PaymentParameters
import com.squareup.sdk.mobilepayments.payment.PromptMode
import com.squareup.sdk.mobilepayments.payment.PromptParameters
import com.squareup.sdk.mobilepayments.payment.ProcessingMode
import java.util.UUID

class PaymentMapper {

    companion object {
        @JvmStatic
        fun getPaymentParameters(paymentParameters: HashMap<String, Any>): PaymentParameters {
            val amountMoney = paymentParameters.get("amountMoney") as HashMap<String, Any>
            val amount = (amountMoney.get("amount") as? Number)?.toLong() ?: 0
            val currency = (amountMoney.get("currencyCode") as? String)?.uppercase() ?: ""

            val currencyCode = 
                CurrencyCode.valueOf(currency);
            
            val builder = PaymentParameters.Builder(
                amount = Money(amount, currencyCode),
                processingMode = convertToProcessingMode(paymentParameters.get("processingMode") as? String),
                allowCardSurcharge = paymentParameters.get("allowCardSurcharge") as? Boolean ?: true,
                paymentAttemptId = paymentParameters.get("paymentAttemptId") as String ?: ""
                )

                if(paymentParameters.get("appFeeMoney") != null){

                    val appFeeAmountMoney = paymentParameters.get("appFeeMoney") as HashMap<String, Any>
                    val appFeeAmount = (appFeeAmountMoney.get("amount") as? Number)?.toLong() ?: 0
                    val appFeeCurrency = (appFeeAmountMoney.get("currencyCode") as? String)?.uppercase() ?: ""                    

                    val appFeeCurrencyCode = CurrencyCode.valueOf(appFeeCurrency);

                    builder.appFeeMoney(Money(appFeeAmount, appFeeCurrencyCode))
                }

                if(paymentParameters.get("tipMoney") != null){

                    val tipAmountMoney = paymentParameters.get("tipMoney") as HashMap<String, Any>
                    val tipAmount = (tipAmountMoney.get("amount") as? Number)?.toLong() ?: 0
                    val tipCurrency = (tipAmountMoney.get("currencyCode") as? String)?.uppercase() ?: ""                    

                    val tipCurrencyCode = CurrencyCode.valueOf(tipCurrency);

                    builder.tipMoney(Money(tipAmount, tipCurrencyCode))
                }

                if(paymentParameters.get("delayDuration") != null) {
                    builder.delayDuration(paymentParameters.get("delayDuration") as? Long)
                }

                if(paymentParameters.get("delayAction") != null) {
                    val delayActionString = (paymentParameters.get("delayAction") as? String)?.uppercase() ?: ""
                    val delayAction = DelayAction.valueOf(delayActionString);
                    builder.delayAction(delayAction)

                }

                if(paymentParameters.get("referenceId") != null){
                    builder.referenceId(paymentParameters.get("referenceId") as? String)
                }
                if(paymentParameters.get("note") != null) {
                    builder.note(paymentParameters.get("note") as? String)
                }
                
                if(paymentParameters.get("orderId") != null) {
                    builder.orderId(paymentParameters.get("orderId") as? String)
                }

                if(paymentParameters.get("autocomplete") != null) {
                    builder.autocomplete(paymentParameters.get("autocomplete") as? Boolean ?: false)
                }

                if(paymentParameters.get("acceptPartialAuthorization") != null) {
                    builder.acceptPartialAuthorization(
                        paymentParameters.get("acceptPartialAuthorization") as? Boolean ?: false
                    )
                }

                if(paymentParameters.get("customerId") != null) {
                    builder.customerId(paymentParameters.get("customerId") as? String)
                }

                if(paymentParameters.get("locationId") != null) {
                    builder.locationId(paymentParameters.get("locationId") as? String)
                }

                if(paymentParameters.get("teamMemberId") != null) {
                    builder.teamMemberId(paymentParameters.get("teamMemberId") as? String)
                }

                if(paymentParameters.get("statementDescription") != null) {
                    builder.statementDescription(paymentParameters.get("statementDescription") as? String)
                }

                return builder.build()
        }

        fun convertToProcessingMode(value: String?) = when (value) {
            "offlineOnly" -> ProcessingMode.OFFLINE_ONLY
            "onlineOnly" -> ProcessingMode.ONLINE_ONLY
            else -> ProcessingMode.AUTO_DETECT
        }

        fun getPromptMode(mode: String?) = when (mode) {
            "customMode" -> PromptMode.CUSTOM
            else -> PromptMode.DEFAULT
        }

        fun getAdditionalPaymentMethodType(type: String?): AdditionalPaymentMethod.Type? = when (type) {
            "keyed" -> AdditionalPaymentMethod.Type.KEYED
            "cash" -> AdditionalPaymentMethod.Type.CASH
            else -> null
        }

        @JvmStatic
        fun getPromptParameters(promptParameters: HashMap<String, Any>): PromptParameters {
            val mode = getPromptMode(promptParameters["mode"] as? String)

            // Map the additional payment methods sent from Dart. An empty (or missing)
            // list must result in no additional methods being shown, so we pass the
            // explicit list instead of relying on the SDK default (all methods).
            val additionalPaymentMethods = (promptParameters["additionalPaymentMethods"] as? List<*>)
                ?.mapNotNull { getAdditionalPaymentMethodType(it as? String) }
                ?: emptyList()

            return PromptParameters(
                mode = mode,
                additionalPaymentMethods = additionalPaymentMethods
            )
        }
    }
}
