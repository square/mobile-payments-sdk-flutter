package com.squareup.square_mobile_payments_sdk.modules

import android.util.Log
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.core.Result as SdkResult
import com.squareup.square_mobile_payments_sdk.extensions.toAuthorizationStateName
import com.squareup.square_mobile_payments_sdk.extensions.toAuthorizeErrorCodeName
import com.squareup.square_mobile_payments_sdk.extensions.toAuthorizedLocationMap
import com.squareup.square_mobile_payments_sdk.extensions.toErrorDetailsMap
import io.flutter.plugin.common.MethodChannel

class AuthModule {
  companion object {
    private val authManager = MobilePaymentsSdk.authorizationManager()

    @JvmStatic
    fun getAuthorizationState(result: MethodChannel.Result) {
      result.success(authManager.authorizationState.toAuthorizationStateName())
    }

    @JvmStatic
    fun getAuthorizedLocation(result: MethodChannel.Result) {
      val location = authManager.location
      if (location == null) {
        result.success(null)
        return
      }
      result.success(location.toAuthorizedLocationMap())
    }

    @JvmStatic
    fun authorize(result: MethodChannel.Result, accessToken: String, locationId: String) {
      Log.d("Auth", accessToken)
      Log.d("Auth", locationId)
      authManager.authorize(accessToken, locationId) { sdkResult ->
        when (sdkResult) {
          is SdkResult.Success -> {
            Log.d("Auth", "success")
            result.success(null)
          }
          is SdkResult.Failure -> {
            Log.d("Auth", "fail")
            result.error(
                    sdkResult.errorCode.toAuthorizeErrorCodeName(),
                    sdkResult.errorMessage,
                    sdkResult.details.map { d -> d.toErrorDetailsMap() }
            )
          }
          else -> {
            result.error("unknown", "Unknown", "Unknown")
          }
        }
      }
    }

    @JvmStatic
    fun deAuthorize(result: MethodChannel.Result) {
      authManager.deauthorize()
      result.success("Deauthorized")
    }
  }
}
