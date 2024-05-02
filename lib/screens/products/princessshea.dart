import 'package:flutter/material.dart';

class PrincessShea extends StatefulWidget {
  const PrincessShea({super.key});

  @override
  State<PrincessShea> createState() => _PrincessSheaState();
}

class _PrincessSheaState extends State<PrincessShea> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('PrincessShea'),
      ),
    );
  }
}