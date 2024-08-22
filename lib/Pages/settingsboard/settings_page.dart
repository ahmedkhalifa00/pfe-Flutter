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
            leading:
                Icon(Icons.supervised_user_circle_sharp, color: Colors.grey),
            title: Text('List of parents'),
            onTap: () {
/*               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConnectedUsersPage(kidId: ''),
                ),
              ); */ // Handle navigation or action here
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
