import 'dart:convert';

import 'package:anyar_retail/models/user.dart';
import 'package:http/http.dart' as http;

class UserService {
  static var baseUrl = 'http://10.1.6.194:1234/api';

  static Future<http.Response> Login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password
      })
    );

    if (response.statusCode == 200) {
      return getUser();
      // return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Login Failed!!!');
    }
  }

  static Future<http.Response> getUser() async {
    final response = await http.get(Uri.parse('$baseUrl/profile'));

    return response;
  }
}