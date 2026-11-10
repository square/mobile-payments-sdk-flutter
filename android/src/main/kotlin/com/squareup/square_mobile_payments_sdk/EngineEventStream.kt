package com.squareup.square_mobile_payments_sdk

import android.os.Handler
import android.os.Looper
import com.squareup.sdk.mobilepayments.core.CallbackReference

private val mainHandler by lazy { Handler(Looper.getMainLooper()) }

private fun dispatchOnMain(action: () -> Unit) {
  if (Looper.myLooper() == Looper.getMainLooper()) {
    action()
  } else {
    mainHandler.post { action() }
  }
}

/** Shares one SDK callback among the engines subscribed to an event type. */
internal class EngineEventStream(
  private val dispatch: (() -> Unit) -> Unit = ::dispatchOnMain,
  private val register: ((Map<String, Any>) -> Unit) -> CallbackReference,
) {
  private val listeners = mutableSetOf<(Map<String, Any>) -> Unit>()
  private var callback: CallbackReference? = null
  private var registration: Any? = null

  // Flutter calls subscribe and unsubscribe on the platform thread. SDK events are dispatched
  // there too before accessing the listeners or sending anything to Flutter.
  fun subscribe(listener: (Map<String, Any>) -> Unit) {
    if (!listeners.add(listener) || listeners.size != 1) return

    val currentRegistration = Any()
    registration = currentRegistration
    try {
      callback = register { event ->
        dispatch {
          if (registration === currentRegistration) {
            listeners.forEach { it(event) }
          }
        }
      }
    } catch (error: RuntimeException) {
      listeners.remove(listener)
      registration = null
      throw error
    }
  }

  fun unsubscribe(listener: (Map<String, Any>) -> Unit) {
    if (!listeners.remove(listener) || listeners.isNotEmpty()) return

    registration = null
    val previousCallback = callback
    callback = null
    previousCallback?.clear()
  }
}
