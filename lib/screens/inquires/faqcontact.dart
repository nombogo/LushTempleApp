import 'package:flutter/material.dart';

class FAQContact extends StatefulWidget {
  const FAQContact({super.key});

  @override
  State<FAQContact> createState() => _FAQContactState();
}

class _FAQContactState extends State<FAQContact> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Column(children: [Text('FAQ Contact Us')],),)
    );
  }
}