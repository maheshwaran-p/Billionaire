import 'dart:convert';
import 'package:billionaire/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final String baseUrl = "http://10.1.55.6:8000";

  Future createUser(String username, String password) async {
    final http.Response response = await http.post(
      '$baseUrl/user/create',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      return Usermodel.fromJson(response.body);
    } else {
      return null;
    }
  }
}
