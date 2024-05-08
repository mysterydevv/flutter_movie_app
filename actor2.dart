// actor2.dart
import 'package:flutter/material.dart';

class Actor2Page extends StatelessWidget {
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
                backgroundImage: AssetImage('assets/actor2_image.jpg'), // replace with actual image path
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Actor 2 Name',
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
              'Jeffrey Jacob Abrams, commonly known as J.J. Abrams, is an American filmmaker, producer, and screenwriter. Born on June 27, 1966, in New York City, Abrams has become one of the most prominent figures in contemporary Hollywood. He is renowned for his work as a director and producer on blockbuster films such as the Star Trek reboot series, Mission: Impossible III, and Star Wars: The Force Awakens. Abrams is celebrated for his storytelling skills and his ability to bring new life to beloved franchises.',
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
