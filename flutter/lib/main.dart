import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Node.js server test"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () async {
                final response = await http
                    .get(Uri.parse('http://192.168.1.12:3000/api/data'));
                print('responce from node.js: ${response.body}');
              },
              child: const Text('Connect to Node.js'),
            ),
          )),
    );
  }
}
