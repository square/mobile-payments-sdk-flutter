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
  PairingHandle? _handle;

  @override
  void initState() {
    super.initState();
    _updateReaders();
    _setReaderObserver();
  }

  _setReaderObserver() {
    _subscription = _squareMobilePaymentsSdkPlugin.readerManager
        .setReaderChangedCallback((event) {
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
    _stopPairing(context);
    super.dispose();
  }

  void _navigateToDetails(String readerId) {
    Navigator.pushNamed(context, '/readerDetails', arguments: readerId);
  }

  void _pairReader(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        enableDrag: false,
        builder: (_) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Pairing Reader...',
                      style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 20),
                  const CircularProgressIndicator(),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () => _stopPairing(context),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text("StopPairing"),
                  ),
                ],
              ),
            )));

    _handle = _squareMobilePaymentsSdkPlugin.readerManager
        .pairReader((bool success, String? error) {
      Navigator.pop(context);
      if (error != null) {
        showAlert(context, 'Error', error.toString());
      } else if (success) {
        showAlert(context, 'Success', 'Reader successfully paired.');
      }
    });
  }

  void _stopPairing(BuildContext context) async {
    if (_handle != null) {
      final stopResult = await _handle!.stop();
      if (context.mounted) {
        Navigator.pop(context);
        showAlert(context, 'Pairing Stopped', 'Result: $stopResult');
      }
    }
  }

  void showAlert(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
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
                key: Key(reader.id),
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(reader.name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(fontSize: 18)),
                          Text(
                            reader.state.toString().toLowerCase(),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      )),
                      const Text('>', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              )),
          TextButton(
            onPressed: () => _pairReader(context),
            child: const Text("Pair reader"),
          ),
        ],
      ),
    );
  }
}
