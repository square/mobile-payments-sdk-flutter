import SquareMobilePaymentsSDK
#if MOCK_READER_UI_ENABLED
import MockReaderUI

extension MockReaderUIError {
    public func getName() -> String {
        return switch self {
        case .invalidApplicationId:
            "invalidApplicationId"
        case .noScene:
            "noScene"
        case .notAuthorized:
            "notAuthorized"
        case .unexpected:
            "unexpected"
        case .versionMismatch:
            "versionMismatch"
        default: "unknown"
        }
    }
}
#endif
