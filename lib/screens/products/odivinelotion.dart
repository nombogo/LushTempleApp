import 'package:flutter/material.dart';

class DivineLotion extends StatefulWidget {
  const DivineLotion({super.key});

  @override
  State<DivineLotion> createState() => _DivineLotionState();
}

class _DivineLotionState extends State<DivineLotion> {
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
      body: Center(
        child: Text("Divine Lotion"),
      ),
     
    );
  }
}