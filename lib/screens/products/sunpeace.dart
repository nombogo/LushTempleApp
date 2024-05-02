import 'package:flutter/material.dart';

class SunPeace extends StatefulWidget {
  const SunPeace({super.key});

  @override
  State<SunPeace> createState() => _SunPeaceState();
}

class _SunPeaceState extends State<SunPeace> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Sun Peace"),
      ),
    );
  }
}