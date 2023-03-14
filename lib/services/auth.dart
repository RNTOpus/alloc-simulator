import 'dart:convert';

import 'package:alo_simulator/models/auth_request.dart';
import 'package:alo_simulator/models/auth_response.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<AuthResponse> login(AuthRequest authRequest) async {
    final response = await http.post(Uri.parse('http://localhost:4200'),
        body: jsonEncode(authRequest.toJson()),
        headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      return AuthResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to authentication');
    }
  }

  Future logout() async {
    //IMPLEMENT USER LOGOUT
  }
}
