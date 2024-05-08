// actor3.dart
import 'package:flutter/material.dart';

class Actor3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text(
          'Actor Details',
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/actor3_image.jpg'), // replace with actual image path
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Actor 3 Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Character Name',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Daisy Ridley is an English actress, recognized for her breakout role as Rey in the Star Wars sequel trilogy. Born on April 10, 1992, in Westminster, London, Ridley's portrayal of the resilient and determined Rey endeared her to audiences worldwide. Beyond Star Wars, Ridley has showcased her talents in other films such as Murder on the Orient Express and Ophelia. She is admired for her compelling performances and dedication to her craft.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
