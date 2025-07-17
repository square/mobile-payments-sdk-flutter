package com.squareup.square_mobile_payments_sdk.mappers

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
                processingMode = convertToProcessingMode(paymentParameters.get("processingMode") as? Int ?: 0)
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

                if(paymentParameters.get("referenceId") != null){
                    builder.referenceId(paymentParameters.get("referenceId") as? String)
                }
                if(paymentParameters.get("note") != null) {
                    builder.note(paymentParameters.get("note") as? String)
                }

                if(paymentParameters.get("delayDuration") != null) {
                    builder.delayDuration(paymentParameters.get("delayDuration") as? Long)
                }
                
                if(paymentParameters.get("delayAction") != null) {
                    val delayActionString = (paymentParameters.get("delayAction") as? String)?.uppercase() ?: ""                    
                    val delayAction = DelayAction.valueOf(delayActionString);
                    builder.delayAction(delayAction)

                }
                

                if(paymentParameters.get("orderId") != null) {
                    builder.orderId(paymentParameters.get("orderId") as? String)
                }

                if(paymentParameters.get("autocomplete") != null) {
                    builder.autocomplete(paymentParameters.get("autocomplete") as? Boolean ?: false)
                }

                if(paymentParameters.get("idempotencyKey") != null) {
                    builder.idempotencyKey(paymentParameters.get("idempotencyKey") as? String)
                }

                if(paymentParameters.get("paymentAttemptId") != null) {
                    builder.paymentAttemptId(paymentParameters.get("paymentAttemptId") as? String)
                }
            

                return builder.build()
        }

        fun convertToProcessingMode(value: Int?) = when (value) {
            1 -> ProcessingMode.OFFLINE_ONLY
            2 -> ProcessingMode.ONLINE_ONLY
            else -> ProcessingMode.AUTO_DETECT
        }

        @JvmStatic
        fun getPromptParameters(promptParameters: HashMap<String, Any>): PromptParameters {
            
            return PromptParameters(
                mode = PromptMode.DEFAULT
            )
        }
    }
}
