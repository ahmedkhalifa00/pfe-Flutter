import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:flutterproject/Resources/strings_manager.dart';
import 'package:flutterproject/Resources/styles_manager.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/wwm.png', // Replace with your background image
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.logo,
                  width: 150,
                  height: 200,
                ),
                SizedBox(height: 50),
                Text(
                  AppStrings.onboardingTitle,
                  style: getBoldStyle(color: Colors.black, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  AppStrings.onboardingSubTitle,
                  style: getRegularStyle(color: Colors.black, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
