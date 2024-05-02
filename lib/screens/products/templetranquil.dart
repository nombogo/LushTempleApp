import 'package:flutter/material.dart';

class TempleTranquil extends StatefulWidget {
  const TempleTranquil({super.key});

  @override
  State<TempleTranquil> createState() => _TempleTranquilState();
}

class _TempleTranquilState extends State<TempleTranquil> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Temple Tranquil'),
      ),
    );
  }
}