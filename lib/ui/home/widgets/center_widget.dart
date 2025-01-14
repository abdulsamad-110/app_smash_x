import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

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

          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.c,
                children: [
                  // Using local asset image
                  Image.asset(
                    color: Colors.white,
                    'assets/logo.png',
                    height: 70,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  // Text below the image
                  Text(
                    "PADEL-GULSHAN ${index + 1}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Off Main University Rd, Block 6\nGulshan-e-Iqbal, Sindh 75300 Karachi,',
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
