import 'package:flutter/material.dart';

class VolumeNotificationPage extends StatefulWidget {
  @override
  _VolumeNotificationPageState createState() => _VolumeNotificationPageState();
}

class _VolumeNotificationPageState extends State<VolumeNotificationPage> {
  bool isSignaling = false;

  void _toggleSignal() {
    setState(() {
      isSignaling = !isSignaling;
    });

    if (isSignaling) {
      // Start signaling logic here
    } else {
      // Stop signaling logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/g2.png', // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          // Content overlay
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 200),
                  Icon(
                    Icons.notifications_active,
                    size: 100,
                    color: isSignaling
                        ? Colors.red
                        : Color.fromARGB(255, 0, 33, 223),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Send a sound notification to the child's device.",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _toggleSignal,
                    child: Text(isSignaling ? 'Stop' : 'Make a bib bib!'),
                    style: ElevatedButton.styleFrom(
                      primary: isSignaling ? Colors.red : Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
