import 'package:flutter/material.dart';
import 'fade_text_widget.dart'; // Import the FadeTextWidget from a separate file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text Change with Fade Animation")),
        body: Center(
          child: FadeTextWidget(), // Use the FadeTextWidget here
        ),
      ),
    );
  }
}