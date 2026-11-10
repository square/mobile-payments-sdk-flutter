package com.squareup.square_mobile_payments_sdk

import com.squareup.sdk.mobilepayments.core.CallbackReference
import kotlin.test.Test
import kotlin.test.assertEquals

internal class EngineEventStreamTest {
  @Test
  fun sharesCallbackUntilTheLastSubscribedEngineLeaves() {
    var registrations = 0
    var clears = 0
    lateinit var emit: (Map<String, Any>) -> Unit
    val stream = EngineEventStream(dispatch = { it() }) { callback ->
      registrations++
      emit = callback
      object : CallbackReference {
        override fun clear() {
          clears++
        }
      }
    }
    val foregroundEvents = mutableListOf<Map<String, Any>>()
    val secondEngineEvents = mutableListOf<Map<String, Any>>()
    val foreground: (Map<String, Any>) -> Unit = { foregroundEvents.add(it) }
    val secondEngine: (Map<String, Any>) -> Unit = { secondEngineEvents.add(it) }
    val connected = mapOf<String, Any>("payload" to "connected")
    val updated = mapOf<String, Any>("payload" to "updated")
    val disconnected = mapOf<String, Any>("payload" to "disconnected")

    stream.subscribe(foreground)
    stream.unsubscribe(secondEngine) // An engine without a subscription detaches.
    emit(connected)

    stream.subscribe(secondEngine)
    emit(updated)

    stream.unsubscribe(secondEngine)
    assertEquals(0, clears)
    emit(disconnected)

    stream.unsubscribe(foreground)
    assertEquals(1, registrations)
    assertEquals(1, clears)
    assertEquals(listOf(connected, updated, disconnected), foregroundEvents)
    assertEquals(listOf(updated), secondEngineEvents)
  }

  @Test
  fun queuedEventsFromAnOldRegistrationDoNotReachARecreatedEngine() {
    val queued = mutableListOf<() -> Unit>()
    lateinit var emit: (Map<String, Any>) -> Unit
    val stream = EngineEventStream(dispatch = { queued.add(it) }) { callback ->
      emit = callback
      object : CallbackReference {
        override fun clear() = Unit
      }
    }
    val oldEngine: (Map<String, Any>) -> Unit = {}
    val newEvents = mutableListOf<Map<String, Any>>()
    val newEngine: (Map<String, Any>) -> Unit = { newEvents.add(it) }
    val freshEvent = mapOf<String, Any>("payload" to "fresh")

    stream.subscribe(oldEngine)
    emit(mapOf("payload" to "stale"))
    stream.unsubscribe(oldEngine)
    stream.subscribe(newEngine)
    emit(freshEvent)
    queued.forEach { it() }

    assertEquals(listOf(freshEvent), newEvents)
  }
}
