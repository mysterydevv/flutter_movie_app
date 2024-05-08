import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.1.12:3000/api';

  static Future<http.Response> fetchData(String path) async {
    final Uri url = Uri.parse('$baseUrl$path');
    final http.Response response = await http.get(url);
    return response;
  }

// Add other methods for POST, PUT, DELETE requests if needed
}
