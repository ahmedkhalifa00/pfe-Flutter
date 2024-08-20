import 'package:flutter/material.dart';

class EmailSettingsPage extends StatefulWidget {
  @override
  _EmailSettingsPageState createState() => _EmailSettingsPageState();
}

class _EmailSettingsPageState extends State<EmailSettingsPage> {
  final TextEditingController _emailController = TextEditingController();
  bool _isChecked = false;
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateForm);
  }

  void _validateForm() {
    setState(() {
      _isButtonEnabled = _emailController.text.isNotEmpty && _isChecked;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your email so you don\'t lose access to your account',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'example@gmail.com',
                suffixIcon: _emailController.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _emailController.clear();
                        },
                      )
                    : null,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                      _validateForm();
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    'I accept the Terms of Use and Privacy Policy',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isButtonEnabled
                  ? () {
                      // Handle email submission
                      print('Email: ${_emailController.text}');
                    }
                  : null,
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
