import 'package:flutter/material.dart';

class AngelCakes extends StatefulWidget {
  const AngelCakes({super.key});

  @override
  State<AngelCakes> createState() => _AngelCakesState();
}

class _AngelCakesState extends State<AngelCakes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Angel Cakes'),
      ),
    );
  }
}