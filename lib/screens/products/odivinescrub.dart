import 'package:flutter/material.dart';

class DivineScrub extends StatefulWidget {
  const DivineScrub({super.key});

  @override
  State<DivineScrub> createState() => _DivineScrubState();
}

class _DivineScrubState extends State<DivineScrub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 223, 171),
        appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the shadow
      ),
      body:
        Center(
          child: Text('Divine Scrub'),
        )
    );
  }
}