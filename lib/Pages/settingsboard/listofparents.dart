/* import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ConnectedUsersPage extends StatelessWidget {
  final String kidId;

  ConnectedUsersPage({required this.kidId});

  Future<List<dynamic>> fetchConnectedUsers() async {
    final url = Uri.parse('http://your_backend_url/connected-users/$kidId');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load connected users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connected Users'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchConnectedUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No users connected'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final user = snapshot.data![index];
                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text(user['fullName']),
                  subtitle: Text(user['_id']),
                  trailing: Icon(Icons.info),
                );
              },
            );
          }
        },
      ),
    );
  }
}
 */