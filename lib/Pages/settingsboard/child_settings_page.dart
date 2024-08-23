import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/settingsboard/child_profile_page.dart';
import 'package:flutterproject/Pages/settingsboard/confirm_delete_page.dart';
import 'package:flutterproject/Pages/settingsboard/listofparents.dart';

class ChildSettingsPage extends StatefulWidget {
  @override
  _ChildSettingsPageState createState() => _ChildSettingsPageState();
}

class _ChildSettingsPageState extends State<ChildSettingsPage> {
  bool isLowBatteryNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres enfant'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/wwm.png', // Replace with your background image asset
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Nickname and photo of the child'),
                subtitle: Text('Boy'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChildProfilePage()),
                  );
                },
              ),
              Divider(),
              SwitchListTile(
                title: Text('Low battery notification'),
                value: isLowBatteryNotificationEnabled,
                onChanged: (bool value) {
                  setState(() {
                    isLowBatteryNotificationEnabled = value;
                  });
                },
              ),
              Divider(),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.delete, color: Colors.red),
                title: Text('Remove Child'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmDeletePage(
                        onDeleteConfirmed: () {
                          // Handle the delete action, e.g., call a backend service
                          print('Child deleted');
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
