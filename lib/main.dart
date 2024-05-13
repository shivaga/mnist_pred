import 'package:flutter/material.dart';
import 'package:image_detect/pages/first_page.dart';
import 'package:image_detect/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

// For main page BottomNavigator
  final double iconSize = 30;
  final double selectedFontSize = 14;
  final double unselectedFontSize = 14;

// For Drawing Canvas
  final double canvasSize = 300;
  final double borderSize = 2;
  final double strokeWidth = 16;
  final int mnistSize = 28;

  final Color? backgroundColor = Colors.grey[200];

  @override
  Widget build(BuildContext context) {
    List tabs = [
      UploadImage(),
      DrawPage(),
    ];
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        iconSize: iconSize,
        selectedFontSize: selectedFontSize,
        unselectedFontSize: unselectedFontSize,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Image"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart), label: "Draw"),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}