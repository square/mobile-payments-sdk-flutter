package com.squareup.square_mobile_payments_sdk.modules

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
      authManager.authorize(accessToken, locationId) { sdkResult ->
        when (sdkResult) {
          is SdkResult.Success -> {
            result.success(null)
          }
          is SdkResult.Failure -> {
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
      result.success(null)
    }
  }
}
