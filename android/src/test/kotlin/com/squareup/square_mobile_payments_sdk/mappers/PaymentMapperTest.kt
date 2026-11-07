package com.squareup.square_mobile_payments_sdk.mappers

import com.squareup.sdk.mobilepayments.payment.DelayAction
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

internal class PaymentMapperTest {

  // Mirrors what Flutter's StandardMessageCodec delivers: Dart ints that fit in 32 bits arrive as
  // java.lang.Integer, larger ones as java.lang.Long, and Dart doubles as java.lang.Double.
  private fun paymentParameters(vararg extras: Pair<String, Any>): HashMap<String, Any> =
    hashMapOf(
      "amountMoney" to hashMapOf<String, Any>("amount" to 100, "currencyCode" to "usd"),
      "processingMode" to "onlineOnly",
      "allowCardSurcharge" to false,
      "paymentAttemptId" to "attempt-id",
      "autocomplete" to false,
      *extras,
    )

  @Test
  fun delayDuration_intSeconds_isConvertedToMilliseconds() {
    val result = PaymentMapper.getPaymentParameters(
      paymentParameters("delayDuration" to 3600, "delayAction" to "cancel")
    )

    assertEquals(3_600_000L, result.delayDuration)
    assertEquals(DelayAction.CANCEL, result.delayAction)
  }

  @Test
  fun delayDuration_longSeconds_isConvertedToMilliseconds() {
    val result = PaymentMapper.getPaymentParameters(
      paymentParameters("delayDuration" to 3_000_000_000L)
    )

    assertEquals(3_000_000_000_000L, result.delayDuration)
  }

  @Test
  fun delayDuration_doubleSeconds_isConvertedToMilliseconds() {
    val result = PaymentMapper.getPaymentParameters(
      paymentParameters("delayDuration" to 90.5)
    )

    assertEquals(90_500L, result.delayDuration)
  }

  @Test
  fun delayDuration_absent_isNull() {
    val result = PaymentMapper.getPaymentParameters(paymentParameters())

    assertNull(result.delayDuration)
  }
}
