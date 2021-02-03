import 'package:flutter/material.dart';

import 'package:sahab_app/screen/sign_in.dart';
import 'package:sahab_app/screen/sign_up.dart';
import 'package:sahab_app/screen/verify_your_number.dart';

import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.white,
      ),
      home:SignIn(),
    );
  }
}

