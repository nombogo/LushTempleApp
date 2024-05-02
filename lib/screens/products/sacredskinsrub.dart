import 'package:flutter/material.dart';

class SacredSkin extends StatefulWidget {
  const SacredSkin({super.key});

  @override
  State<SacredSkin> createState() => _SacredSkinState();
}

class _SacredSkinState extends State<SacredSkin> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Sacred Skin'),
      ),
    );
  }
}