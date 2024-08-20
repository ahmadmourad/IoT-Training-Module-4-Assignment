import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20), // Padding inside the circle
            decoration: BoxDecoration(
              color: Colors.orange, // Background color of your choice
              shape: BoxShape.circle, // Makes the container circular
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.lightbulb, size: 100, color: Colors.yellow),
                SizedBox(height: 15), // Adjusted spacer to move text up
                Text(
                  'Hello IOT with Flutter',
                  style: GoogleFonts.roboto( // Using GoogleFonts package for text styling
                    fontSize: 18, // Set text size
                    fontWeight: FontWeight.bold, // Set text weight
                    color: Colors.black, // Text color
                  ),
                  textAlign: TextAlign.center, // Center the text inside the circle
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

