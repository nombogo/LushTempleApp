// text_box.dart
import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController dobController;
  final TextEditingController phoneNumberController;
  
  const MyTextBox({
    Key? key,
    required this.emailController,
    required this.dobController,
    required this.phoneNumberController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: dobController,
            decoration: InputDecoration(labelText: 'Date of Birth'),
          ),
          TextField(
            controller: phoneNumberController,
            decoration: InputDecoration(labelText: 'Phone Number'),
          ),
        ],
      ),
    );
  }
}
