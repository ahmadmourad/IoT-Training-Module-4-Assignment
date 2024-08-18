import 'package:flutter/material.dart';

class FadeTextWidget extends StatefulWidget {
  @override
  _FadeTextWidgetState createState() => _FadeTextWidgetState();
}

class _FadeTextWidgetState extends State<FadeTextWidget> {
  bool _isHello = true;
  double _opacity = 1.0;

  void _toggleText() {
    setState(() {
      // Toggle the text and opacity
      _isHello = !_isHello;
      _opacity = 0.0;

      // Fade in the new text after a short delay
      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          _opacity = 1.0;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 300),
          child: Text(
            _isHello ? "Hello" : "Goodbye",
            style: TextStyle(fontSize: 40),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleText,
          child: Text("Press Me"),
        ),
      ],
    );
  }
}
