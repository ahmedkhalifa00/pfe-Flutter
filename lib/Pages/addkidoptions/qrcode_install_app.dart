import 'package:flutter/material.dart';

class QrcodeInstallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF9CCFF8),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              height: 4,
              width: 40,
              color: Colors.grey[300],
              margin: const EdgeInsets.only(bottom: 16.0),
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/images/a1.png', // Add your image asset path
            height: 100,
          ),
          SizedBox(height: 20.0),
          Text(
            'Show your friends the QR code for installing the app',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'for their kids safty',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/images/qr_code.png', // Add your image asset path
            height: 100,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Background color
              foregroundColor: Colors.white, // Text color
            ),
            onPressed: () {
              // Handle send link action
            },
            child: Text('Share link'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}
