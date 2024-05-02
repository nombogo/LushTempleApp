import 'package:flutter/material.dart';

class ShineThee extends StatefulWidget {
  const ShineThee({super.key});

  @override
  State<ShineThee> createState() => _ShineTheeState();
}

class _ShineTheeState extends State<ShineThee> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Shine Thee"),
      ),
    );
  }
}