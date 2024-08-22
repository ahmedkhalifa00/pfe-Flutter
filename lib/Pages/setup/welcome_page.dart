import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:flutterproject/Resources/colors_manager.dart';
import 'package:flutterproject/Resources/routes_manager.dart';
import 'package:flutterproject/Resources/styles_manager.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.b1),
              SizedBox(height: 20),
              Text(
                "Hello, I'm Kido!",
                style: getBoldStyle(color: Colors.white, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Now we'll set up your phone",
                style: getRegularStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context,
                      Routes
                          .configureKidPhone); // Navigate to the next setup page
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.primary,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "let's go !",
                  style:
                      getRegularStyle(color: AppColors.primary, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
