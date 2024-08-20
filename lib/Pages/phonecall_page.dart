import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

class AddChildPhonePage extends StatefulWidget {
  @override
  _AddChildPhonePageState createState() => _AddChildPhonePageState();
}

class _AddChildPhonePageState extends State<AddChildPhonePage> {
  String? childPhoneNumber;

  Future<void> _requestPermission() async {
    PermissionStatus status = await Permission.contacts.status;

    if (status.isGranted) {
      _selectContact();
    } else if (status.isDenied) {
      PermissionStatus newStatus = await Permission.contacts.request();
      if (newStatus.isGranted) {
        _selectContact();
      } else {
        _showPermissionDeniedDialog();
      }
    } else if (status.isPermanentlyDenied) {
      _showPermissionDeniedDialog();
    }
  }

  Future<void> _selectContact() async {
    try {
      Contact? contact = await ContactsService.openDeviceContactPicker();
      if (contact != null && contact.phones!.isNotEmpty) {
        setState(() {
          childPhoneNumber = contact.phones!.first.value;
        });
      }
    } catch (e) {
      print("Error selecting contact: $e");
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Permission Required'),
          content: Text(
              'Contacts permission is required to select a contact. Please enable it in the app settings.'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Open Settings'),
              onPressed: () {
                openAppSettings();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Child\'s Phone Number'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (childPhoneNumber == null)
              ElevatedButton(
                onPressed: _requestPermission,
                child: Text('Select Child\'s Phone Number'),
              ),
            if (childPhoneNumber != null)
              Text('Selected Phone Number: $childPhoneNumber'),
          ],
        ),
      ),
    );
  }
}
