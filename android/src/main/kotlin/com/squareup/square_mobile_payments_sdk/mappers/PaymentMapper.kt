package com.squareup.square_mobile_payments_sdk.mappers

import com.squareup.sdk.mobilepayments.payment.CurrencyCode
import com.squareup.sdk.mobilepayments.payment.Money
import com.squareup.sdk.mobilepayments.payment.PaymentParameters
import com.squareup.sdk.mobilepayments.payment.PromptMode
import com.squareup.sdk.mobilepayments.payment.PromptParameters

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
                idempotencyKey = paymentParameters.get("idempotencyKey") as String
                )

                if(paymentParameters.get("referenceId") != null){
                    builder.referenceId(paymentParameters.get("referenceId") as? String)
                }
                if(paymentParameters.get("note") != null) {
                    builder.note(paymentParameters.get("note") as? String)
                }

                if(paymentParameters.get("autocomplete") != null) {
                    builder.autocomplete(paymentParameters.get("autocomplete") as? Boolean ?: false)
                }

                return builder.build()
        }

        @JvmStatic
        fun getPromptParameters(promptParameters: HashMap<String, Any>): PromptParameters {
            
            return PromptParameters(
                mode = PromptMode.DEFAULT
            )
        }
    }
}
