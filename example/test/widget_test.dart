// Smoke test for the example app.
//
// The app talks to the native plugin through a MethodChannel as soon as
// `AuthState` is created, so the channel is mocked here. `MyApp` also expects a
// `Provider<AuthState>` above it — `main()` installs one, so the test has to do
// the same when it pumps `MyApp` directly.

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:square_mobile_payments_sdk_example/auth_state.dart';
import 'package:square_mobile_payments_sdk_example/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('square_mobile_payments_sdk');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall call) async {
      switch (call.method) {
        case 'getAuthorizationState':
          return 'notAuthorized';
        default:
          return null;
      }
    });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  testWidgets('renders the donut counter home screen', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AuthState(),
        child: const MyApp(),
      ),
    );
    await tester.pump();

    expect(find.text('Donut Counter'), findsOneWidget);
    expect(find.text('Permissions'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });
}
