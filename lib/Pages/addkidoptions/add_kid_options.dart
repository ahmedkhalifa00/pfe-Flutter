import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/addkidoptions/add_kid_code_options.dart';
import 'package:flutterproject/Pages/addkidoptions/qrcode_install_app.dart';
import 'package:flutterproject/Pages/addkidoptions/send_link_options.dart';

class AddKidOptions extends StatelessWidget {
  void _showAddKidCodeOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AddKidCodeOptions(
        kidId: '',
      ),
    );
  }

  void _showSendLinkOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SendLinkOptions(),
    );
  }

  void _showSendcodeQRforInstall(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => QrcodeInstallApp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Logo Image positioned at the top
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/a5.png', // Replace with your logo image asset
                height: 100, // Adjust the size as needed
              ),
            ),
          ),
          // Content overlay positioned towards the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFF9CCFF8).withOpacity(0.9),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.child_care),
                    title: Text('Add a kid or more'),
                    onTap: () {
                      _showAddKidCodeOptions(
                          context); // Handle option selection
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.link),
                    title: Text('Send link'),
                    onTap: () {
                      _showSendLinkOptions(context); // Handle option selection
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.qr_code),
                    title: Text('View QR code'),
                    onTap: () {
                      _showSendcodeQRforInstall(
                          context); // Handle option selection
                    },
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
