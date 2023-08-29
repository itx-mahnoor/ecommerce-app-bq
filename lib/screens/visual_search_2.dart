import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:ecommerce_app/screens/main_page.dart';

class VisualSearch2Screen extends StatefulWidget {
  final String imagePath;

  VisualSearch2Screen({required this.imagePath});

  @override
  _VisualSearch2ScreenState createState() => _VisualSearch2ScreenState();
}

class _VisualSearch2ScreenState extends State<VisualSearch2Screen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.file(
                File(widget.imagePath),
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Icon(
                Icons.search,
                size: 60,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                'Finding Similar Results...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
