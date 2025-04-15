import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:square_mobile_payments_sdk_example/offline_status_screen.dart';
import 'donut_counter_screen.dart';
import 'permissions_screen.dart';
import 'auth_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AuthState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => DonutCounterScreen(),
        '/permissions': (context) => PermissionsScreen(),
        '/offline-status': (context) => OfflineStatusScreen(),
      },
    );
  }
}
