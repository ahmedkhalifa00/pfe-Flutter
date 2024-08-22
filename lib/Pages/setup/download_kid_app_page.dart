import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:flutterproject/Resources/colors_manager.dart';
import 'package:flutterproject/Resources/routes_manager.dart';
import 'package:flutterproject/Resources/styles_manager.dart';
//import 'package:share_plus/share_plus.dart';

class DownloadKidAppPage extends StatelessWidget {
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
                  Text(
                    'Send your child a link to the kido App',
                    style: getBoldStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 247, 255),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Row(
                      children: [
                        Image.asset(AppAssets.logo, height: 60),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'kido by kidotrack',
                                style: getBoldStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Image.asset(AppAssets.googlePlay,
                                      height: 30), // Add the image paths
                                ],
                              ),
                              Text(
                                'This app will send you your child\'s location',
                                style: getRegularStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
/*                 final link =
                    'https://play.google.com/store/apps/details?id=com.kido_by_kidotrack'; // Replace with your app link
                Share.share(
                  'Check out the kido App: $link',
                  subject: 'Download kido App for your child!',
                ); */
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Send the link to my child',
                style: getRegularStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.home);
              },
              child: Text(
                'Skip',
                style: getRegularStyle(color: AppColors.primary, fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
