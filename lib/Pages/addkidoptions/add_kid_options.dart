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
    return Container(
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
          // Drag indicator
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            width: 60,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          ListTile(
            leading: Icon(Icons.child_care),
            title: Text('Add a kid or more'),
            onTap: () {
              _showAddKidCodeOptions(context); // Handle option selection
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Send link'),
            onTap: () {
              _showSendLinkOptions(context); // Handle option selection
            },
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('View QR code'),
            onTap: () {
              _showSendcodeQRforInstall(context); // Handle option selection
            },
          ),
        ],
      ),
    );
  }
}
