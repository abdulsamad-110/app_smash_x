import 'package:flutter/material.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Booking'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Welcome Booking View')],
      ),
    );
  }
}
