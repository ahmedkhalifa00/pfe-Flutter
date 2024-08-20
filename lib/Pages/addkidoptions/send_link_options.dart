import 'package:flutter/material.dart';

class SendLinkOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
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
          Image.asset(
            'assets/images/image.png', // Add your image asset path
            height: 100,
          ),
          SizedBox(height: 20.0),
          Text(
            'Share Kidotrack',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Send a link to install the app to your friends and colleagues:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20.0),
          SelectableText(
            'https://r.kidotrack.org/ref/in_app/n/111368742', // This can be dynamic
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle send link action
            },
            child: Text('share Link'),
          ),
          TextButton(
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
