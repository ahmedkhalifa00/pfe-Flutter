import 'package:flutter/material.dart';

class MicListeningPage extends StatefulWidget {
  @override
  _MicListeningPageState createState() => _MicListeningPageState();
}

class _MicListeningPageState extends State<MicListeningPage> {
  bool isListening = false;
  String audioData = "Not Listening";

  void _toggleListening() {
    setState(() {
      isListening = !isListening;
      audioData = isListening ? "Listening to the child..." : "Not Listening";
    });

    if (isListening) {
      // Start listening logic here
    } else {
      // Stop listening logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mic Listening'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.mic, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text(
              audioData,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleListening,
              child: Text(isListening ? 'Stop Listening' : 'Start Listening'),
            ),
          ],
        ),
      ),
    );
  }
}
