import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class VerifyYourNumber extends StatefulWidget {
  @override
  _VerifyYourNumberState createState() => _VerifyYourNumberState();
}

class _VerifyYourNumberState extends State<VerifyYourNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 30, top: 37, right: 30),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'images/logo.png',
                    width: 140,
                    height: 60,
                  ),
                  sizedBox22,
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Sign Up For an Account",
                      style: KSignIntoYourAccount,
                    ),
                  ),
                  sizedBox8,
                  Text(
                    "Please enter the code sent to your number.",style: KPleaseEnter,
                  ),
                  sizedBox22,
                  // PinFieldAutoFill(
                  //     decoration: UnderlineDecoration(
                  //         textStyle: TextStyle(fontSize: 20, color: Colors.black),
                  //         colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3))
                  //
                  //     ),codeLength: 4,
                  //   controller: null,
                  //   onCodeChanged: null,
                  //   autofocus: null,
                  //   onCodeSubmitted: null,
                  //
                  //
                  // ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
