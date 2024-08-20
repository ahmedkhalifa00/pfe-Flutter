import 'package:flutter/material.dart';

class ConfirmDeletePage extends StatelessWidget {
  final VoidCallback onDeleteConfirmed;

  ConfirmDeletePage({required this.onDeleteConfirmed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm deletion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Are you sure you want to delete this child ?',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                onDeleteConfirmed();
                Navigator.of(context).pop(); // Close the confirmation page
                Navigator.of(context).pop(); // Close the settings page
              },
              child: Text('Delete'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
