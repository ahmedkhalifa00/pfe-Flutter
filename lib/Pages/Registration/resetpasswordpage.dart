import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/assets_manager.dart';
import 'package:http/http.dart' as http;

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

  void _resetPassword() async {
    final email = _emailController.text.trim();
    if (email.isNotEmpty) {
      try {
        final response = await http.post(
          Uri.parse('https://your-backend-api.com/reset-password'),
          body: {'email': email},
        );
        if (response.statusCode == 200) {
          print('Password reset email sent');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Password reset email sent')),
          );
          Navigator.pop(context);
        } else {
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
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter an email')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'assets/images/b2.png', // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
            // Main Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 285),
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 125, 190, 243), // Background color
                      foregroundColor: Colors.white, // Text color
                    ),
                    onPressed: _resetPassword,
                    child: Text('Send Reset Link'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
