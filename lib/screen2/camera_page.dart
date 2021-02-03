import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File imageFile;
    _openCamera()async{
    final picture=await ImagePicker().getImage(source: ImageSource.camera);
    this.setState(() {
      imageFile=File(picture.path) ;
    });

  }
  @override
  void initState() {

      setState(() {

        _openCamera();
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: imageFile==null?Text("No Image Selected"):Image.file(imageFile)
    );
  }
}

