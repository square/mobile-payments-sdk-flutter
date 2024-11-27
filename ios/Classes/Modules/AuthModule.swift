import Flutter
import SquareMobilePaymentsSDK

public class AuthModule {
    private static let authManager = MobilePaymentsSDK.shared.authorizationManager

    public static func getAuthorizationState(result: @escaping FlutterResult) {
         switch authManager.state {
            case .notAuthorized:
                result("notAuthorized")
            case .authorizing:
                result("authorizing")
            case .authorized:
                result("authorized")
        }
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
                    result(FlutterError(code: "UNAUTHORIZED",
                                        message: "Unable to authenticate: \(error.localizedDescription)",
                                        details: nil))
                } else {
                    result("Authorized")
                }
            }
    }

    public static func deauthorize(result: @escaping FlutterResult) {
        authManager.deauthorize {
            result("Deauthorized")
        }
    }
}