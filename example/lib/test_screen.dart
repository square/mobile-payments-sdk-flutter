import 'package:flutter/material.dart';

import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool testModal = false;
  final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();
  List<Map<String, dynamic>> content = [];

  void onLog(String message, {bool isError = false}) {
    setState(() {
      content.add({'message': message, 'isError': isError});
    });
  }

  Future<void> isOfflineProcessingAllowed() async {
    bool isAllowed = await _squareMobilePaymentsSdkPlugin
        .settingsManager.paymentSettings
        .isOfflineProcessingAllowed();
    debugPrint('isOfflineProcessingAllowed -> $isAllowed');
    onLog('isOfflineProcessingAllowed -> $isAllowed');
  }

  Future<void> getOfflineTotalStoredAmountLimit() async {
    Money? money = await _squareMobilePaymentsSdkPlugin
        .settingsManager.paymentSettings
        .getOfflineTotalStoredAmountLimit();
    debugPrint('getOfflineTotalStoredAmountLimit -> $money');
    onLog('getOfflineTotalStoredAmountLimit -> ${money.toString()}');
  }

  Future<void> getOfflineTransactionAmountLimit() async {
    Money? money = await _squareMobilePaymentsSdkPlugin
        .settingsManager.paymentSettings
        .getOfflineTransactionAmountLimit();
    debugPrint('getOfflineTransactionAmountLimit -> $money');
    onLog('getOfflineTransactionAmountLimit -> ${money.toString()}');
  }

  Future<void> getPayments() async {
    try {
      var payments = await _squareMobilePaymentsSdkPlugin
          .paymentManager.offlinePaymentQueue
          .getPayments();
      debugPrint('getPayments -> $payments');
      onLog('getPayments -> $payments');
    } catch (error) {
      debugPrint('getPayments Error -> $error');
      onLog('getPayments Error -> $error', isError: true);
    }
  }

  Future<void> getTotalStoredPaymentAmount() async {
    try {
      Money? money = await _squareMobilePaymentsSdkPlugin
          .paymentManager.offlinePaymentQueue
          .getTotalStoredPaymentAmount();
      debugPrint('getTotalStoredPaymentAmount -> $money');
      onLog('getTotalStoredPaymentAmount:\n ${money.toString()}');
    } catch (error) {
      debugPrint('getTotalStoredPaymentAmount Error -> $error');
      onLog('getTotalStoredPaymentAmount Error -> $error', isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Screen')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                spacing: 20,
                children: content.isNotEmpty
                    ? content.map((item) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color:
                                    item['isError'] ? Colors.red : Colors.green,
                                shape: BoxShape.circle,
                              ),
                              margin: const EdgeInsets.only(right: 10, top: 8),
                            ),
                            Expanded(
                              child: Text(
                                item['message'],
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black),
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        );
                      }).toList()
                    : [const SizedBox(width: double.infinity)],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () => {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Test',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 10),
                            ElevatedButton(
                                onPressed: isOfflineProcessingAllowed,
                                child:
                                    const Text('isOfflineProcessingAllowed')),
                            ElevatedButton(
                                onPressed: getOfflineTotalStoredAmountLimit,
                                child: const Text(
                                    'getOfflineTotalStoredAmountLimit')),
                            ElevatedButton(
                                onPressed: getOfflineTransactionAmountLimit,
                                child: const Text(
                                    'getOfflineTransactionAmountLimit')),
                            ElevatedButton(
                                onPressed: getPayments,
                                child: const Text('getPayments')),
                            ElevatedButton(
                                onPressed: getTotalStoredPaymentAmount,
                                child:
                                    const Text('getTotalStoredPaymentAmount')),
                          ],
                        ),
                      );
                    })
              },
              child: const Text('Test Methods'),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
