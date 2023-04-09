import 'dart:convert';
import 'package:flutter_application_api/model/user.dart';
import 'package:http/http.dart' as http;

class UserService {
  static String baseUrl = "https://63da6f2719fffcd620c956eb.mockapi.io";
  static Future<List<Karyawan>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse("$baseUrl/karyawan"));
      final body = response.body;
      final result = jsonDecode(body);
      List<Karyawan> users = List<Karyawan>.from(result["data"].map(
        (Karyawan) => Karyawan.fromJson(Karyawan),
      ));
      return users;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
