import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ChildProfilePage extends StatefulWidget {
  @override
  _ChildProfilePageState createState() => _ChildProfilePageState();
}

class _ChildProfilePageState extends State<ChildProfilePage> {
  bool isBoySelected = true;
  File? _imageFile;

  final ImagePicker _picker = ImagePicker();

  void _toggleGender(bool isBoy) {
    setState(() {
      isBoySelected = isBoy;
    });
  }

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bgs.png', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          // Main Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 70),
                GestureDetector(
                  onTap: _pickImage,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _imageFile != null
                        ? FileImage(_imageFile!)
                        : AssetImage('assets/images/child_photo.jpg')
                            as ImageProvider,
                    child: _imageFile == null
                        ? Icon(Icons.add_a_photo, size: 50, color: Colors.white)
                        : null,
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'kidName',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'The nickname will be displayed on the map, in the chat and in the notifications',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ChoiceChip(
                      label: Text('Boy'),
                      selected: isBoySelected,
                      onSelected: (bool selected) {
                        _toggleGender(true);
                      },
                    ),
                    ChoiceChip(
                      label: Text('Girl'),
                      selected: !isBoySelected,
                      onSelected: (bool selected) {
                        _toggleGender(false);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Handle save action
                  },
                  child: Text('Save'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
