import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title Text
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Text(
            "Centers",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        // Card Slider
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              Color cardColor;
              switch (index) {
                case 0:
                  cardColor = Colors.amber;
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
                        padding: const EdgeInsets.only(
                            top: 3, bottom: 7, left: 1, right: 1),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.black,
                              height: 70,
                              width: double.infinity,
                              child: Image.asset(
                                'assets/logo.png',
                                color: Colors.white,
                                fit: BoxFit.cover,
                              ),
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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
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
        ),
      ],
    );
  }
}
