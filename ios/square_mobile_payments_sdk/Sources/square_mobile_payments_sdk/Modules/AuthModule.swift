import Foundation
import Flutter
import SquareMobilePaymentsSDK

public class AuthModule {
    private static let authManager = MobilePaymentsSDK.shared
        .authorizationManager
    private static var authorizationStateObserver: AuthorizationStateObserverCallback?

    public static func getAuthorizationState(result: @escaping FlutterResult) {
        return result(authManager.state.getName())
    }

    public static func getAuthorizedLocation(result: @escaping FlutterResult) {
        guard let location = authManager.location else {
            return result(nil)
        }
        return result(location.toMap())
    }
    
    public static func authorize(
        result: @escaping FlutterResult,
        accessToken: String,
        locationId: String
    ) {
        authManager.authorize(
            withAccessToken: accessToken,
            locationID: locationId
        ) { error in
            if let error {
                let e = error as NSError
                if e.domain == SQMPAuthorizationErrorDomain,
                   let authError = AuthorizationError(rawValue: e.code) {
                    result(
                        FlutterError(
                            code: authError.getName(),
                            message: e.localizedDescription,
                            details: e.localizedFailureReason
                        )
                    )
                } else {
                    result(
                        FlutterError(
                            code: AuthorizationError.unexpected.getName(),
                            message: e.localizedDescription,
                            details: e.localizedDescription
                        )
                    )
                }
            } else {
                result(NSNull())
            }
        }
    }

    public static func deauthorize(result: @escaping FlutterResult) {
        authManager.deauthorize {
            result(NSNull())
        }
    }

    public static func setAuthorizationStateChangedCallback(result: @escaping FlutterResult, sink: FlutterEventSink?) {
        if let eventSink = sink, authorizationStateObserver == nil {
            let observer = AuthorizationStateObserverCallback(eventSink: eventSink)
            authManager.add(observer)
            authorizationStateObserver = observer
        }
        result(NSNull())
    }

    public static func removeAuthorizationStateChangedCallback(result: @escaping FlutterResult) {
        if let observer = authorizationStateObserver {
            authManager.remove(observer)
            authorizationStateObserver = nil
        }
        result(NSNull())
    }
}

class AuthorizationStateObserverCallback: AuthorizationStateObserver {
    private let eventSink: FlutterEventSink

    init(eventSink: @escaping FlutterEventSink) {
        self.eventSink = eventSink
    }

    func authorizationStateDidChange(_ authorizationState: AuthorizationState) {
        eventSink([
            "type": "authorizationStateChange",
            "payload": authorizationState.getName()
        ])
    }
}
