import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:flutterproject/Resources/strings_manager.dart';
import 'package:flutterproject/Resources/styles_manager.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.pingo),
        SizedBox(height: 20),
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
    );
  }
}
