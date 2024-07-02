import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lush_temple_app/components/text_box.dart';
import 'package:lush_temple_app/screens/loadpopup.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize controllers with current user's information
    final currentUser = FirebaseAuth.instance.currentUser!;
    emailController.text = currentUser.email ?? '';
    // Initialize other controllers as needed
  }

  void _logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoadingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              FirebaseAuth.instance.currentUser?.displayName ?? '',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: _logout,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'My Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            // Editable fields for account details
            MyTextBox(
              emailController: emailController,
              dobController: dobController,
              phoneNumberController: phoneNumberController,
            ),
          ],
        ),
      ),
    );
  }
}
