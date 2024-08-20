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
        title: Text('Volume Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.notifications_active,
                size: 100, color: Color.fromARGB(255, 0, 33, 223)),
            SizedBox(height: 20),
            Text(
              "Send a sound notification to the child's device.",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleSignal,
              child: Text(isSignaling ? 'Stop' : 'Make a bib bib !'),
            ),
          ],
        ),
      ),
    );
  }
}
