
import 'package:eschool_pen/biometric_id.dart';
import 'package:eschool_pen/choose_profile.dart';
import 'package:eschool_pen/face_id_login.dart';
import 'package:eschool_pen/fill_name.dart';
import 'package:eschool_pen/login_new.dart';
import 'package:eschool_pen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  LoginNew(),
    );
  }
}

