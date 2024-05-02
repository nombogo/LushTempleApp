import 'package:flutter/material.dart';

class FloralOasis extends StatefulWidget {
  const FloralOasis({super.key});

  @override
  State<FloralOasis> createState() => _FloralOasisState();
}

class _FloralOasisState extends State<FloralOasis> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Floral Oasis"),
      ),
    );
  }
}