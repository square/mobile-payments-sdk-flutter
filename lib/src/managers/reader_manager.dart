import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';

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
}