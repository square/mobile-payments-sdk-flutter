import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:square_mobile_payments_sdk_example/auth_state.dart';

class DonutCounterScreen extends StatelessWidget {
  const DonutCounterScreen({super.key});

  _OnBuy() {
    print("On Buy");
  }

  @override
  Widget build(BuildContext context) {
    final isAuthorized = Provider.of<AuthState>(context).isAuthorized;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                // Handle Settings action
              },
              child: const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/permissions');
              },
              child: const Text(
                'Permissions',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/donut.svg',
              width: 200.0, // Adjust size as needed
              height: 200.0,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Donut Counter',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: isAuthorized ? _OnBuy : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Buy for \$1',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          if (isAuthorized)
            const Text("This device is authorized.")
          else
            const Text("This device is not authorized.")
        ],
      ),
    );
  }
}
