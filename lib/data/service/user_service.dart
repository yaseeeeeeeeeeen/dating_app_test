import 'dart:convert';
import 'package:dating_app_test/data/model/user_data_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  final String _apiUrl = 'https://randomuser.me/api/';

  Future<List<User>> fetchRandomUsers(int count) async {
    final response = await http.get(Uri.parse('$_apiUrl?results=$count'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<User> users =
          (data['results'] as List).map((json) => User.fromJson(json)).toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
