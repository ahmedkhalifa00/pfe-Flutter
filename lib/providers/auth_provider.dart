import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthProvider with ChangeNotifier {
  final _storage = const FlutterSecureStorage();
  String? _token;

  String? get token => _token;

  Future<void> register(String email, String password) async {
    final url = Uri.parse('http://10.0.2.2:5000/api/auth/register');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Registration successful
      final responseData = json.decode(response.body);
      _token = responseData['token'];
      await _storeToken(_token);
      notifyListeners();
    } else {
      throw Exception('Failed to register: ${response.body}');
    }
  }

  Future<bool> login(String email, String password) async {
    final url = Uri.parse('http://10.0.2.2:5000/api/auth/login');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Handle success
      return true;
    } else {
      // Handle failure
      return false;
    }
  }

  Future<void> facebookLogin() async {
    final url = Uri.parse('http://your_backend_url/facebook-login');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Handle success
      final responseData = json.decode(response.body);
      _token = responseData['token'];
      await _storeToken(_token);
      notifyListeners();
    } else {
      throw Exception('Failed to login with Facebook: ${response.body}');
    }
  }

  Future<void> logout() async {
    _token = null;
    await _storage.delete(key: 'token');
    notifyListeners();
  }

  Future<void> _storeToken(String? token) async {
    await _storage.write(key: 'token', value: token);
  }

  Future<void> loadToken() async {
    _token = await _storage.read(key: 'token');
    notifyListeners();
  }
}
