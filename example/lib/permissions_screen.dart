import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
import 'package:square_mobile_payments_sdk_example/auth_state.dart';

class PermissionsScreen extends StatefulWidget {
  const PermissionsScreen({super.key});

  @override
  State<PermissionsScreen> createState() => _PermissionsScreenState();
}

enum SignInState {
  idle,
  loading,
  error,
}

class _PermissionsScreenState extends State<PermissionsScreen> {
  bool isBluetoothGranted = false;
  bool isLocationGranted = false;
  bool isMicrophoneGranted = false;
  bool isReadStateGranted = false;
  final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();
  SignInState _signInState = SignInState.idle;

  Future<void> _checkInitialPermissions() async {
    final bluetoothStatus = await Permission.bluetoothScan.status;
    final locationStatus = await Permission.location.status;
    final microphoneStatus = await Permission.microphone.status;
    if (Platform.isAndroid) {
      final readStateStatus = await Permission.phone.status;
      setState(() {
        isReadStateGranted = readStateStatus.isGranted;
      });
    }
    setState(() {
      isBluetoothGranted = bluetoothStatus.isGranted;
      isLocationGranted = locationStatus.isGranted;
      isMicrophoneGranted = microphoneStatus.isGranted;
    });
  }

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
    String accessToken = "YOUR_ACCESS_TOKEN";
    String locationId = "YOUR_LOCATION_ID";
    String response;

    setState(() {
      _signInState = SignInState.loading;
    });

    await Future.delayed(const Duration(seconds: 1));

    try {
      response = await _squareMobilePaymentsSdkPlugin.authorize(
              accessToken, locationId) ??
          'Unknown response';

      print(response);
    } on Exception catch (e){
      print(e);
      response = 'Failed';
      setState(() {
        _signInState = SignInState.error;
      });
    }

    print(response);
    if (!mounted) return;

    if (response == 'Authorized' || response.startsWith("AuthorizedLocation")) {
      Provider.of<AuthState>(context, listen: false).authorize();
    }
  }

  Future<void> hideReader() async {
    try {
      await _squareMobilePaymentsSdkPlugin.hideMockReaderUI();
      print("Hide Reader");
    } on Exception {
      print("Exeption in hide reader");
    }
  }

  Future<void> deauthorizeSDK() async {
    String response;
    try {
      response = await _squareMobilePaymentsSdkPlugin.deauthorize() ??
          'Unknown response';
      print("RESPONSE: ");
      print(response);
    } on Exception {
      response = 'Failed';
    }

    if (!mounted) return;

    if (response == 'Deauthorized') {
      Provider.of<AuthState>(context, listen: false).signOut();
      hideReader();
      setState(() {
        _signInState = SignInState.idle;
      });
    }
  }

  _onSignIn() {
    authorizeSDK();
  }

  _signOut() {
    deauthorizeSDK();
  }

  @override
  void initState() {
    super.initState();
    _checkInitialPermissions();
  }

  @override
  Widget build(BuildContext context) {
    bool areAllPermissionsGranted = 
        (isBluetoothGranted || Platform.isIOS) &&
        isLocationGranted &&
        isMicrophoneGranted &&
        (isReadStateGranted || Platform.isIOS);

    final isAuthorized = Provider.of<AuthState>(context).isAuthorized;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey.shade200,
            padding: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Permissions',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
            !Platform.isIOS
                ? const SizedBox(height: 20)
                : const SizedBox(height: 0),
            !Platform.isIOS
                ? _buildPermissionItem(
                    title: 'Read Phone State',
                    description:
                        'Square needs phone access in order to uniquely identify the devices associated with your account and ensure that unauthorized devices are not able to act on your behalf.',
                    isGranted: isReadStateGranted,
                    onRequestPermission: _requestReadStatePermission,
                  )
                : const SizedBox(height: 0),
            const SizedBox(height: 40),
            SizedBox(
                width: double.infinity,
                height: 60,
                child: isAuthorized
                    ? ElevatedButton(
                        onPressed: _signOut,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Sign Out',
                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    : ElevatedButton(
                        onPressed: areAllPermissionsGranted
                            ? _onSignIn
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple.shade200,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: _signInState == SignInState.loading
                            ? const SizedBox.square(
                              dimension: 20,
                              child:  CircularProgressIndicator(
                                  color: Colors.black87,
                                  strokeWidth: 2,
                                ))
                            : const Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                      )),
            const SizedBox(height: 10),
            isAuthorized
                ? const Text(
                    'This device is authorized.',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                : _signInState == SignInState.loading
                    ? const Text(
                        'Authorizing',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      )
                    : _signInState == SignInState.error
                        ? const Text(
                            'Authorization failed.',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        : const Text(
                            'Device not authorized.',
                            style: TextStyle(
                                color: Color.fromARGB(255, 187, 122, 24),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
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
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        )),
        Checkbox(
          value: isGranted,
          onChanged: (_) => onRequestPermission(),
        ),
      ],
    );
  }
}
