import 'package:flutter/material.dart';

class GuestView extends StatelessWidget {
  const GuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Guest'),),
      body: const Column(children: [
        Text('Welcome Guest View')
      ],),
    );
  }
}