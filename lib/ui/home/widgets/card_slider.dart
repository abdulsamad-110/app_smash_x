import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          Color cardColor;
          switch (index) {
            case 0:
              cardColor = Colors.black;
              break;
            case 1:
              cardColor = Colors.blue;
              break;
            case 2:
              cardColor = Colors.green;
              break;
            default:
              cardColor = Colors.red;
          }

          return GestureDetector(
            onTap: () {
              print("Card tapped: PADEL-GULSHAN ${index + 1}");
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Image.asset(
                          color: Colors.white,
                          'assets/logo.png',
                          height: 70,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "PADEL-GULSHAN ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Off Main University Rd, Block 6 Gulshan-e-Iqbal, Sindh 75300 Karachi,',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
