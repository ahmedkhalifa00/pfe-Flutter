import 'package:flutter/material.dart';
import 'package:flutterproject/Resources/routes_manager.dart';

class AddHomeLocationOption extends StatefulWidget {
  @override
  _AddHomeLocationOptionState createState() => _AddHomeLocationOptionState();
}

class _AddHomeLocationOptionState extends State<AddHomeLocationOption> {
  bool isHomeNotificationEnabled = false;
  bool isSchoolNotificationEnabled = false;

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
          // Drag handle at the top
          Center(
            child: Container(
              height: 4,
              width: 40,
              color: Colors.grey[300],
              margin: const EdgeInsets.only(bottom: 16.0),
            ),
          ),
          // List tile for Home location
          ListTile(
            leading: Icon(Icons.home,
                color: isHomeNotificationEnabled ? Colors.blue : Colors.grey),
            title: Text('home'),
            subtitle: Text(isHomeNotificationEnabled
                ? 'Notifications ON'
                : 'Notifications OFF'),
            trailing: Switch(
              value: isHomeNotificationEnabled,
              onChanged: (bool value) {
                setState(() {
                  isHomeNotificationEnabled = value;
                  if (value) {
                    Navigator.pushNamed(context, Routes.addhome);
                  }
                });
              },
            ),
            tileColor: isHomeNotificationEnabled
                ? Colors.blue.shade50
                : Colors.grey.shade200,
          ),
          Divider(height: 1),
          // List tile for School location
          ListTile(
            leading: Icon(Icons.school,
                color: isSchoolNotificationEnabled ? Colors.blue : Colors.grey),
            title: Text('school'),
            subtitle: Text(isSchoolNotificationEnabled
                ? 'Notifications ON'
                : 'Notifications OFF'),
            trailing: Switch(
              value: isSchoolNotificationEnabled,
              onChanged: (bool value) {
                setState(() {
                  isSchoolNotificationEnabled = value;
                  if (value) {
                    Navigator.pushNamed(context, Routes.addhome);
                  }
                });
              },
            ),
            tileColor: isSchoolNotificationEnabled
                ? Colors.blue.shade50
                : Colors.grey.shade200,
          ),
          SizedBox(height: 20.0),
          // Button to add another location (e.g., Grandparent's house or Park)

          // Close button
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('close'),
          ),
        ],
      ),
    );
  }
}
