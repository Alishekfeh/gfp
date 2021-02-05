import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:sahab_app/widgets/bottom_sign.dart';
import 'package:sahab_app/widgets/row_sign.dart';

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
                  PinCodeTextField(
                    maxLength: 4,
                    hasUnderline: true,
                   pinBoxOuterPadding: EdgeInsets.all(8),


                    onTextChanged: (value){
                      print(value);
                    },

                  ),
                  sizedBox22,
                  sizedBox22,
                  BottomSign(title: "Verify & Continue",),
                  sizedBox22,
                  RowSign(title1: "Didn’t receive a code? ",title2: "Resend Code",),
                  sizedBox8,
                  RowSign(title1: "Wrong Mobile number?  ",title2: "Edit Mobile Number",),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
