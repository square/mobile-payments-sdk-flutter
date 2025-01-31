package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.core.Result as SdkResult

class AuthModule {
    companion object {
        private val authManager =  MobilePaymentsSdk.authorizationManager()

        @JvmStatic
        fun getAuthorizationState(result: MethodChannel.Result) {
          val authState = when {
              authManager.authorizationState.isAuthorized -> "authorized"
              authManager.authorizationState.isAuthorizationInProgress -> "authorizing"
              else -> "notAuthorized"
          }
          result.success(authState) 
        }

        @JvmStatic
        fun getAuthorizationState(result: MethodChannel.Result) {
          
        }

        @JvmStatic
        fun authorize(result: MethodChannel.Result, accessToken: String, locationId: String) {
            if(authManager.authorizationState.isAuthorized){
                result.success("Authorized")
              } else {
                authManager.authorize(accessToken, locationId) { sdkResult ->
                  when (sdkResult) {
                      is SdkResult.Success -> {
                        result.success(sdkResult.value.toString())
                      }
                      is SdkResult.Failure -> {
                        result.error(sdkResult.errorCode.toString(), sdkResult.errorMessage, sdkResult.debugCode)
                      }
                      else -> {
                        result.error("Unknown", "Unknown", "Unknown")
                      }
                  }
                }
              }
        }

        @JvmStatic
        fun deAuthorize(result: MethodChannel.Result) {
            authManager.deauthorize()
            result.success("deauthorized")
        }
    }
}