import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'package:share_plus/share_plus.dart';
//import 'dart:convert';

class AddKidCodeOptions extends StatefulWidget {
  final String kidId;

  AddKidCodeOptions({required this.kidId});

  @override
  _AddKidCodeOptionsState createState() => _AddKidCodeOptionsState();
}

class _AddKidCodeOptionsState extends State<AddKidCodeOptions> {
  String? code;
  DateTime? expirationDate;
  bool isLoading = true;
/* 
  @override
  void initState() {
    super.initState();
    _fetchCode();
  }

  Future<void> _fetchCode() async {
    final url =
        Uri.parse('http://your_backend_url/get-link-code/${widget.kidId}');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        code = data['linkCode'];
        expirationDate = DateTime.parse(data['linkCodeExpiration']);
        isLoading = false;
      });
    } else {
      // Handle error
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load code')),
      );
    }
  }

  Future<void> _generateCode() async {
    final url =
        Uri.parse('http://your_backend_url/generate-link-code/${widget.kidId}');
    final response = await http.post(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        code = data['linkCode'];
        expirationDate = DateTime.parse(data['linkCodeExpiration']);
      });
    } else {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to generate code')),
      );
    }
  } */

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
          Text(
            'To check your child\'s location on the map, install kido on their phone and enter the code',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/images/baby.png', // Add your image asset path
            height: 100,
          ),
          SizedBox(height: 20.0),
          isLoading
              ? CircularProgressIndicator()
              : Column(
                  children: [
                    Text(
                      code ?? 'N/A', // Display the dynamic code
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      expirationDate != null
                          ? 'Days before code expires: ${(expirationDate!.difference(DateTime.now()).inDays + 1).toString()}'
                          : 'N/A',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: isLoading
                ? null
                : () {
/*                     final String message =
                        'Install the kido app on your child\'s phone and use this code to link their account: $code';

                    Share.share(message); */
                  },
            child: Text('Send link and code'),
          ),
          ElevatedButton(
            onPressed: () {}, //_generateCode,
            child: Text('Generate New Code'),
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
