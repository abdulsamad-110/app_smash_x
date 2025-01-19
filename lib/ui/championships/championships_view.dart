import 'package:flutter/material.dart';

class ChampionshipsView extends StatelessWidget {
  const ChampionshipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Championships'),
      ),
      body: const Column(children: [
        Text('Welcome Championships view')
      ],),
    );
  }
}