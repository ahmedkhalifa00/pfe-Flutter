import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:flutterproject/Resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then(
        (value) => Navigator.pushReplacementNamed(context, Routes.onboarding));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.splash,
              fit: BoxFit.cover, // Ensures the image covers the entire screen
            ),
          ),
        ],
      ),
    );
  }
}
