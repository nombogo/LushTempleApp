import 'package:flutter/material.dart';

class SereneSister extends StatefulWidget {
  const SereneSister({super.key});

  @override
  State<SereneSister> createState() => _SereneSisterState();
}

class _SereneSisterState extends State<SereneSister> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Serene Sister'),
      ),
    );
  }
}