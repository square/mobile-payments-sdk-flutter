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
            val currency = (amountMoney.get("currency") as? String)?.uppercase() ?: "EUR"
            
            val currencyCode = 
                CurrencyCode.valueOf(currency);
            
            return PaymentParameters.Builder(
                amount = Money(amount, currencyCode),
                idempotencyKey = UUID.randomUUID().toString()
                )
                .referenceId(paymentParameters.get("referenceId") as? String)
                .note(paymentParameters.get("note") as? String)
                .autocomplete(paymentParameters.get("autocomplete") as? Boolean ?: true)
                .build()
        }

        @JvmStatic
        fun getPromptParameters(promptParameters: HashMap<String, Any>): PromptParameters {
            val modeRaw = promptParameters["mode"] as? String ?: "DEFAULT"
            
            // Normalizar el valor a un formato compatible con PromptMode
            val mode = when (modeRaw.lowercase()) {
                "defaultmode" -> "DEFAULT"
                "custommode" -> "CUSTOM"
                else -> "DEFAULT" // Valor por defecto en caso de error
            }
            return PromptParameters(
                mode = PromptMode.valueOf(mode)
            )
        }
    }
}
