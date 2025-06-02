import 'dart:async';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';
import 'package:flutter/material.dart';

class ReaderDetailsScreen extends StatefulWidget {
  const ReaderDetailsScreen({super.key});

  @override
  State<ReaderDetailsScreen> createState() => _ReaderDetailsScreenState();
}

class _ReaderDetailsScreenState extends State<ReaderDetailsScreen> {
  final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();

  @override
  void initState() {
    super.initState();
  }

  Future<ReaderInfo?> _fetchReader(String readerId) async {
    final result =
        await _squareMobilePaymentsSdkPlugin.readerManager.getReader(readerId);
    return result;
  }

  _onBlinkReader(String readerId) async {
    try {
      await _squareMobilePaymentsSdkPlugin.readerManager.blink(readerId);
    } catch (e) {
      print(e);
    }
  }

  _onForgetReader(String readerId) async {
    try {
      await _squareMobilePaymentsSdkPlugin.readerManager.forget(readerId);
      if (context.mounted) {
        Navigator.pop(context);
      }
    } catch (e) {
      print(e);
    }
  }

  Widget _Detail(String key, dynamic value) {
    if (value == null) {
      return const SizedBox();
    }
    String displayValue;
    if (value is List) {
      displayValue = value.join(', ').toLowerCase();
    } else if (value is Map) {
      displayValue = value.toString();
    } else {
      displayValue = value.toString().toLowerCase();
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$key :', style: const TextStyle(fontSize: 18)),
          Flexible(
            child: Text(displayValue,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String readerId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reader Details"),
        ),
        body: FutureBuilder<ReaderInfo?>(
          future: _fetchReader(readerId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData) {
              return const Center(child: Text('No reader found'));
            }

            final reader = snapshot.data!;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _Detail("Name", reader.name),
                  _Detail("Id", reader.id),
                  _Detail("model", reader.model),
                  _Detail("Battery", reader.batteryStatus),
                  _Detail("Card insertion status", reader.cardInsertionStatus),
                  _Detail("Connection info", reader.connectionInfo),
                  _Detail("Firmware info", reader.firmwareInfo),
                  const SizedBox(height: 25),
                  if (reader.isBlinkable == true)
                    ElevatedButton(
                      onPressed: () => _onBlinkReader(readerId),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                      ),
                      child: const Text(
                        'Blink reader',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  if (reader.isForgettable == true)
                    ElevatedButton(
                      onPressed: () => _onForgetReader(readerId),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                      ),
                      child: const Text(
                        'Forget reader',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                ],
              ),
            );
          },
        ));
  }
}
