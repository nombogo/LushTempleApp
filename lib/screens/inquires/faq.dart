import 'package:flutter/material.dart';
import 'package:lush_temple_app/screens/inquires/contactus.dart';

class FAQContact extends StatefulWidget {
  const FAQContact({super.key});

  @override
  State<FAQContact> createState() => _FAQContactState();
}

class _FAQContactState extends State<FAQContact> {
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
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the shadow
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/faq.png',
                fit: BoxFit.cover, // Cover the entire container
              ),
              Image.asset(
                'assets/aq1.png',
                fit: BoxFit.cover, // Cover the entire container
              ),
              Image.asset(
                'assets/aq2.png',
                fit: BoxFit.cover, // Cover the entire container
              ),
              Image.asset(
                'assets/aq3.png',
                fit: BoxFit.cover, // Cover the entire container
              ),
              const SizedBox(height: 20),
              const Text(
                "If you don't see your question answered here, Contact Us!",
                textAlign: TextAlign.justify,
          
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to profile page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const ContactUs(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.contact_mail,
              color: Colors.brown[800],
                    size: 80, // Adjust the size as needed
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}