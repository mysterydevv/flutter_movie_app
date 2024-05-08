// actor4.dart
import 'package:flutter/material.dart';

class Actor4Page extends StatelessWidget {
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
                backgroundImage: AssetImage('assets/actor4_image.jpg'), // replace with actual image path
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Actor 4 Name',
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
              "John Williams is an American composer and conductor, widely regarded as one of the greatest film composers of all time. Born on February 8, 1932, in Floral Park, New York, Williams has composed some of the most memorable and iconic film scores in cinematic history. His extensive body of work includes compositions for films like Star Wars, Jurassic Park, Jaws, and the Harry Potter series. Williams' music has become synonymous with the magic of cinema, earning him numerous awards and accolades throughout his illustrious career.",
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
