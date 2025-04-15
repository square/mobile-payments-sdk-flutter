import 'dart:async';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';
import 'package:flutter/material.dart';

class ReaderSettingsScreen extends StatefulWidget {
  const ReaderSettingsScreen({super.key});

  @override
  State<ReaderSettingsScreen> createState() => _ReaderSettingsScreenState();
}

class _ReaderSettingsScreenState extends State<ReaderSettingsScreen> {
  final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();
  late final ReaderCallbackReference _subscription;
  List<ReaderInfo> readers = [];
  bool inProgress = false;

  @override
  void initState() {
    super.initState();
    _updateReaders();
    _setReaderObserver();
  }

  _setReaderObserver() {
    _subscription = _squareMobilePaymentsSdkPlugin.readerManager
        .setReaderChangedCallback((event) {
      print("===================");
      print(event);
      _updateReaders();
    });
  }

  Future<void> _updateReaders() async {
    try {
      final result =
          await _squareMobilePaymentsSdkPlugin.readerManager.getReaders();
      setState(() {
        readers = result;
      });
    } catch (e) {
      print('Error fetching readers: $e');
    }
  }

  @override
  void dispose() {
    _subscription.clear();
    super.dispose();
  }

  void _navigateToDetails(String readerId) {
    Navigator.pushNamed(context, '/readerDetails', arguments: readerId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reader settings"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ...readers.map((reader) => GestureDetector(
                onTap: () => _navigateToDetails(reader.id),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(reader.name,
                              style: const TextStyle(fontSize: 18)),
                          Text(
                            reader.state.toString().toLowerCase(),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const Text('>', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
