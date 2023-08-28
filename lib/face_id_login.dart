import 'dart:io';
import 'package:eschool_pen/biometric_id.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
 class FaceId extends StatefulWidget {
   const FaceId({Key? key}) : super(key: key);

   @override
   State<FaceId> createState() => _FaceIdState();
 }

 class _FaceIdState extends State<FaceId> {

   File ? _selectedImage;

   @override
  void initState() {
     _pickimagefromcamera();
    super.initState();
  }

   @override
   Widget build(BuildContext context) {
     return  Column(
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
         Container(
           color: Colors.white,
           height: double.infinity,
           width: double.infinity,
         )
       ],
     );

   }
   Future _pickimagefromcamera() async {
     final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);

     if(returnedImage == null) return;
     setState(() {
       _selectedImage = File(returnedImage.path);
       Navigator.push(
             context,
           MaterialPageRoute(builder: (context) => const Biometric()),
            );
     });

   }
  }

