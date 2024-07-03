// text_box.dart
import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController dobController;
  final TextEditingController phoneNumberController;
  
  const MyTextBox({
    super.key,
    required this.emailController,
    required this.dobController,
    required this.phoneNumberController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: dobController,
            decoration: const InputDecoration(labelText: 'Date of Birth'),
          ),
          TextField(
            controller: phoneNumberController,
            decoration: const InputDecoration(labelText: 'Phone Number'),
          ),
        ],
      ),
    );
  }
}
