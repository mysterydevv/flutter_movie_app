import 'package:flutter/material.dart';

class ActorPage extends StatelessWidget {
  final String actorName;

  ActorPage(this.actorName);

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
                backgroundImage: AssetImage('assets/actor_image.jpg'), // replace with actual image path
              ),
            ),
            SizedBox(height: 20),
            Text(
              actorName,
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
              "Mark Hamill is an American actor, best known for his iconic portrayal of Luke Skywalker in the Star Wars franchise. Born on September 25, 1951, in Oakland, California, Hamill's career spans over several decades, encompassing not only his work in Star Wars but also extensive voice acting roles, notably as the Joker in various Batman animated series and video games. He is celebrated for his versatility as an actor and his contributions to popular culture.",
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
