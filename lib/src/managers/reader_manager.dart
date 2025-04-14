import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

class ReaderManager {
  ReaderManager._privateConstructor();
  static final ReaderManager _instance = ReaderManager._privateConstructor();
  factory ReaderManager() => _instance;

  Future<void> showMockReaderUI() async {
    SquareMobilePaymentsSdkPlatform.instance.showMockReaderUI();
  }

  Future<void> hideMockReaderUI() async {
    SquareMobilePaymentsSdkPlatform.instance.hideMockReaderUI();
  }

  Future<List<ReaderInfo>> getReaders() async {
    return SquareMobilePaymentsSdkPlatform.instance.getReaders();
  }

  Future<ReaderInfo?> getReader(String id) async {
    return SquareMobilePaymentsSdkPlatform.instance.getReader(id);
  }

  Future<void> forget(String id) async {
    SquareMobilePaymentsSdkPlatform.instance.forget(id);
  }
}
