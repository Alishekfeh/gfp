import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
import 'package:sahab_app/screen/sign_in.dart';
import 'package:sahab_app/screen/verify_your_number.dart';
import 'package:sahab_app/widgets/bottom_sign.dart';
import 'package:sahab_app/widgets/confirm_password.dart';
import 'package:sahab_app/widgets/insert_name_and_last_name.dart';
import 'package:sahab_app/widgets/password.dart';
import 'package:sahab_app/widgets/phone_number.dart';
import 'package:sahab_app/widgets/row_sign.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController number = TextEditingController();



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
                  sizedBox22,
                  InsertNameAndLastName(
                    title: "First Name *",
                  ),
                  sizedBox20,
                  InsertNameAndLastName(
                    title: "Last Name *",
                  ),
                  sizedBox22,
                  PhoneNumberInput(number: number),
                  sizedBox22,
                  PasswordWidget(),
                  sizedBox22,
                  ConfirmPassword(),
                  sizedBox22,
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "By signing up, you agree to our ",
                          style: KSpanTextFirst),
                      TextSpan(text: "Terms ", style: KSpanTextSecond),
                      TextSpan(text: "and ", style: KSpanTextFirst),
                      TextSpan(
                          text: "Privacy Policy. ", style: KSpanTextSecond),
                    ]),
                  ),
                  sizedBox8,
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => VerifyYourNumber()));
                      },
                      child: BottomSign(
                        title: "Sign Up",
                      )),
                  sizedBox22,
                  RowSign(
                    title1: "Already have an account? ",
                    title2: "  Sign In",
                    onTao: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignIn()));
                    },
                  ),
                  sizedBox20,
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


