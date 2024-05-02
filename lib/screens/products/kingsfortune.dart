import 'package:flutter/material.dart';

class KingsFortune extends StatefulWidget {
  const KingsFortune({super.key});

  @override
  State<KingsFortune> createState() => _KingsFortuneState();
}

class _KingsFortuneState extends State<KingsFortune> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Kings Fortune"),
      ),
    );
  }
}