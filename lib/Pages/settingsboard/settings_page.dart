import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/settingsboard/child_settings_page.dart';
import 'package:flutterproject/Pages/settingsboard/email_settings_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Container(
            width: 50,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Text('Tasks'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.devices, color: Colors.blue),
            title: Text('Devices'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.purple),
            title: Text('Child settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChildSettingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.email, color: Colors.grey),
            title: Text('Set Email'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EmailSettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.grey),
            title: Text('Help'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.grey),
            title: Text('About the app'),
            onTap: () {},
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
