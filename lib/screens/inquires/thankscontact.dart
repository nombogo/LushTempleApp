import 'package:flutter/material.dart';

class ContactThankYou extends StatefulWidget {
  const ContactThankYou({super.key});

  @override
  State<ContactThankYou> createState() => _ContactThankYouState();
}

class _ContactThankYouState extends State<ContactThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Center(
        child: Text("Thank you for contacting us. We will get back to you soon."),
      ),
    );
  }
}