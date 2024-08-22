import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:http/http.dart'
    as http; // Add this import for making HTTP requests

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // This is the method where you handle the backend call to reset the password
  void _resetPassword() async {
    final email = _emailController.text.trim();
    if (email.isNotEmpty) {
      try {
        final response = await http.post(
          Uri.parse('https://your-backend-api.com/reset-password'),
          body: {'email': email},
        );
        if (response.statusCode == 200) {
          // Show success message or navigate to the login page
          print('Password reset email sent');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Password reset email sent')),
          );
          Navigator.pop(context);
        } else {
          // Handle error
          print('Error sending password reset email');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error sending password reset email')),
          );
        }
      } catch (e) {
        print('Error: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('An error occurred, please try again later')),
        );
      }
    } else {
      // Show an error message if the email field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter an email')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.bgs),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:
                  _resetPassword, // Calls the method when the button is pressed
              child: Text('Send Reset Link'),
            ),
          ],
        ),
      ),
    );
  }
}
