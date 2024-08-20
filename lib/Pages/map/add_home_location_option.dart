import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/routes_manager.dart';

class AddHomeLocationOption extends StatelessWidget {
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
            'Add your home',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'for notification when the kid is in/out of home',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 50.0),
          SizedBox(height: 50.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.addhome);
              // Handle send link action
            },
            child: Text('Add your home location'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Fermer'),
          ),
        ],
      ),
    );
  }
}
