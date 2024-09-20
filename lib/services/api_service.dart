import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<dynamic>> fetchEmployeeData() async {
    final response = await http.get(Uri.parse('https://aamras.com/dummy/EmployeeDetails.json'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['employees'];
    } else {
      throw Exception('Failed to load employee data');
    }
  }
}
