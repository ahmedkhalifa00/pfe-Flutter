import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:flutterproject/Resources/colors_manager.dart';
import 'package:flutterproject/Resources/routes_manager.dart';
import 'package:flutterproject/Resources/styles_manager.dart';

class ConfigureKidPhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(AppAssets.logo, height: 80),
                    SizedBox(height: 10),
                    Text(
                      'kidotrack',
                      style: getBoldStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      'For the parent',
                      style: getRegularStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Icon(Icons.add, size: 40, color: AppColors.primaryy),
                SizedBox(width: 20),
                Column(
                  children: [
                    Image.asset(AppAssets.kido, height: 80),
                    SizedBox(height: 10),
                    Text(
                      'kido',
                      style: getBoldStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      'For the kid',
                      style: getRegularStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: AppColors.primaryy),
                      SizedBox(width: 10),
                      Text(
                        "Congratulations! The parent's phone is set up!",
                        style: getBoldStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.circle_outlined, color: AppColors.primaryy),
                      SizedBox(width: 10),
                      Text(
                        "Now let's set up your child's",
                        style:
                            getRegularStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    Routes.downloadKidApp); // Navigate to the next setup page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryy,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Set up the child's phone",
                style: getRegularStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
