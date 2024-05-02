import 'package:flutter/material.dart';

class EternalFlame extends StatefulWidget {
  const EternalFlame({super.key});

  @override
  State<EternalFlame> createState() => _EternalFlameState();
}

class _EternalFlameState extends State<EternalFlame> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Eternal Flame'),
      ),
    );
  }
}