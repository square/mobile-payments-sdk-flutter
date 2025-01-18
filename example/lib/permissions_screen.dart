import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';

class PermissionsScreen extends StatefulWidget {
  const PermissionsScreen({super.key});

  @override
  State<PermissionsScreen> createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends State<PermissionsScreen> {
  bool isBluetoothGranted = false;
  bool isLocationGranted = false;
  bool isMicrophoneGranted = false;
  bool isReadStateGranted = false;
  String _token = "";
  final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();

  // Method to request Bluetooth permission
  Future<void> _requestBluetoothPermission() async {
    final status = await Permission.bluetoothScan.request();
    setState(() {
      isBluetoothGranted = status.isGranted;
    });
  }

  // Method to request Location permission
  Future<void> _requestLocationPermission() async {
    final status = await Permission.location.request();
    setState(() {
      isLocationGranted = status.isGranted;
    });
  }

  // Method to request Microphone permission
  Future<void> _requestMicrophonePermission() async {
    final status = await Permission.microphone.request();
    setState(() {
      isMicrophoneGranted = status.isGranted;
    });
  }

  // Method to request Read State permission
  Future<void> _requestReadStatePermission() async {
    final status = await Permission.phone.request();
    setState(() {
      isReadStateGranted = status.isGranted;
    });
  }

  Future<void> authorizeSDK() async {
    String accessToken =
        "EAAAl1WZHJ-0s5QvmhdRX5KNWGBD0ns7r0rOw5PBfsj3rYv9c5CDQLETDO_zO3vW";
    String locationId = "LP8X8765QSFRQ";
    String response;
    try {
      response = await _squareMobilePaymentsSdkPlugin.authorize(
              accessToken, locationId) ??
          'Unknown response';
    } on PlatformException {
      response = 'Failed to authorize';
    }

    if (!mounted) return;

    setState(() {
      _token = response;
    });
  }

  _onSignIn() {
    authorizeSDK();
    print("On SIgnin");
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _token = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Permissions',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPermissionItem(
              title: 'Bluetooth',
              description:
                  'Square uses Bluetooth to connect and communicate with Square devices. You should ask for this permission if you are using readers that connect via Bluetooth.',
              isGranted: isBluetoothGranted,
              onRequestPermission: _requestBluetoothPermission,
            ),
            const SizedBox(height: 20),
            _buildPermissionItem(
              title: 'Location',
              description:
                  'Square uses location to know where transactions take place. This reduces risk and minimizes payment disputes.',
              isGranted: isLocationGranted,
              onRequestPermission: _requestLocationPermission,
            ),
            const SizedBox(height: 20),
            _buildPermissionItem(
              title: 'Microphone',
              description:
                  'Square\'s R4 reader uses the microphone jack to communicate payment card data to your device. You should ask for this permission if you are using an R4 reader.',
              isGranted: isMicrophoneGranted,
              onRequestPermission: _requestMicrophonePermission,
            ),
            const SizedBox(height: 20),
            _buildPermissionItem(
              title: 'Read Phone State',
              description:
                  'Square needs phone access in order to uniquely identify the devices associated with your account and ensure that unauthorized devices are not able to act on your behalf.',
              isGranted: isReadStateGranted,
              onRequestPermission: _requestReadStatePermission,
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: _onSignIn,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade200,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(_token),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionItem({
    required String title,
    required String description,
    required bool isGranted,
    required VoidCallback onRequestPermission,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            )),
            Checkbox(
              value: isGranted,
              onChanged: (_) => onRequestPermission(),
            ),
          ],
        )
      ],
    );
  }
}
