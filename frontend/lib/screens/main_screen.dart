import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ApiTestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Test"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              User user = Provider.of<User>(context, listen: false);
              if (user == null) {
                throw Exception("User not authenticated");
              }

              // Replace this URL with your API endpoint
              final response = await http.get(Uri.parse('http://192.168.1.12:3000/api/data'));

              if (response.statusCode == 200) {
                print('Response from API: ${response.body}');
              } else {
                print('Failed to fetch data from API: ${response.statusCode}');
              }
            } catch (error) {
              print('Error connecting to API: $error');
            }
          },
          child: const Text('Test API'),
        ),
      ),
    );
  }
}
