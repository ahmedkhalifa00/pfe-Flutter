import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:flutterproject/Resources/strings_manager.dart';
import 'package:flutterproject/Resources/styles_manager.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/wwm.png', // Replace with your map background image
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.onboarding2,
                  width: 150, // Control the width of the centered image
                  height: 200, // Control the height of the centered image
                ),
                SizedBox(height: 70),
                Text(
                  AppStrings.onboarding2Title,
                  style: getBoldStyle(color: Colors.black, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  AppStrings.onboarding2SubTitle,
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
