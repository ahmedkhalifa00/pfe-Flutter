// ignore_for_file: prefer_const_constructors
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
          Image.asset(AppAssets.background),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.logo),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
