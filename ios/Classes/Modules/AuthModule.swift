import Flutter
import SquareMobilePaymentsSDK

public class AuthModule {
    private static let authManager = MobilePaymentsSDK.shared.authorizationManager

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
        locationId: String) {
            authManager.authorize(
                withAccessToken: accessToken,
                locationID: locationId
            ) { error in
                if let error {
                    var e = error as NSError
                    if let authError = AuthorizationError(rawValue: e.code) {
                        result(FlutterError(code: authError.getName(),
                                        message: e.localizedDescription,
                                        details: e.localizedFailureReason))
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
}