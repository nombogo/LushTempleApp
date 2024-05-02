import 'package:flutter/material.dart';

class CalmSprings extends StatefulWidget {
  const CalmSprings({super.key});

  @override
  State<CalmSprings> createState() => _CalmSpringsState();
}

class _CalmSpringsState extends State<CalmSprings> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('CalmSprings'),
      ),
    );
  }
}