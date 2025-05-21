package com.squareup.square_mobile_payments_sdk.extensions

import com.squareup.sdk.mobilepayments.authorization.AuthorizationState
import com.squareup.sdk.mobilepayments.authorization.AuthorizedLocation

fun AuthorizedLocation.toAuthorizedLocationMap(): Map<String, Any?> {
    return mapOf(
            "id" to locationId,
            "currencyCode" to currencyCode.name.lowercase(),
            "name" to name
    )
}

fun AuthorizationState.toAuthorizationStateName(): String {
    return when {
        isAuthorized -> "authorized"
        isAuthorizationInProgress -> "authorizing"
        else -> "notAuthorized"
    }
}
