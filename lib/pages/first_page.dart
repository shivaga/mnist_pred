import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_detect/model/classifier.dart';
import 'dart:io';

class UploadImage extends StatefulWidget {
  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  final picker = ImagePicker();
  Classifier classifier = Classifier();
  PickedFile? image1;
  XFile? imagetaken;
  int digit = -1;
  int digit2=-1;

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
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        hoverElevation: 2.0,
        child: Icon(Icons.camera_alt_outlined),
        hoverColor: Colors.white,
        onPressed: () async {
            imagetaken = (await picker.pickImage(
            source: ImageSource.gallery,
            maxHeight: 300,
            maxWidth: 300,
            imageQuality: 100,
          ));
          if(imagetaken!=null) {
            image1=PickedFile(imagetaken!.path);
            digit2 = await classifier.classifyImage(PickedFile(imagetaken!.path));
            setState(() {
              image1=PickedFile(imagetaken!.path);
              digit=digit2;
            });
          }
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Best digit recognizer in the world"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
                "Image will be shown below",
                style: TextStyle(fontSize: 20)
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: canvasSize + borderSize*2,
              height: canvasSize + borderSize*2,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: borderSize),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: digit == -1 ? AssetImage('assets/white_background.jpg')
                      : Image.file(File(image1!.path)).image ,
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
                "Current Prediction:",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                digit == -1 ? "" : "$digit",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)
            ),
          ],
        ),
      ),
    );
  }
}

