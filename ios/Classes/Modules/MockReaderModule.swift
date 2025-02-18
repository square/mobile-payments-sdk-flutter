import Flutter
import SquareMobilePaymentsSDK
import MockReaderUI

public class MockReaderModule {
    static var mockReader: MockReaderUI? = {
        do {
            return try MockReaderUI(for: MobilePaymentsSDK.shared)
        } catch {
            return nil
        }
    }()

    public static func showMockReaderUI(result: @escaping FlutterResult) {
        do {
            try mockReader?.present()
        } catch  {
            
        }
        result(nil)
    }

    public static func hideMockReaderUI(result: @escaping FlutterResult) {
        mockReader?.dismiss()
        result(nil)
    }
}