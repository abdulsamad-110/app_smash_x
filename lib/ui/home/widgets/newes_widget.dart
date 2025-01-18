import 'package:flutter/material.dart';

class NewesWidget extends StatelessWidget {
  const NewesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            "News",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/boat.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'SMASH X FREE\nSLOTS',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.0,
                        shadows: [
                          Shadow(
                            blurRadius: 4,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 16,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      '11/01/2025',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black38,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
