import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../models/user_profile.dart';

class ApiService {
  static const String _baseUrl = 'https://randomuser.me/api/';

  Future<List<UserProfile>> fetchProfiles({int results = 20}) async {
    try {
      final response = await http
          .get(
            Uri.parse('$_baseUrl?results=$results'),
          )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> users = data['results'] ?? [];
        return users.map((user) => UserProfile.fromJson(user)).toList();
      } else {
        throw Exception('Failed to load profiles: ${response.statusCode}');
      }
    } on http.ClientException catch (e) {
      throw Exception('Network error: $e');
    } catch (e) {
      throw Exception('Error fetching profiles: $e');
    }
  }
}
