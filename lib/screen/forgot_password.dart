import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
import 'package:sahab_app/screen/reset_password.dart';
import 'package:sahab_app/screen/sign_in.dart';
import 'package:sahab_app/widgets/insert_name_and_last_name.dart';
class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                      "Forgot Password ?",
                      style: KSignIntoYourAccount,
                    ),
                  ),
                  sizedBox8,
                  Text(
                    "Enter your email and we will send you a reset link.",style: KPleaseEnter,
                  ),
                  sizedBox22,
                  InsertNameAndLastName(title: "Email",),
                  sizedBox22,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[
                      GestureDetector(
                          onTap:  () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignIn()));
                          },
                          child: Text("Back to Sign In",style: KSign,)),
                      GestureDetector(
                        onTap:  () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => ResetPassword()));
                          },
                        child: Container(

                          height: 37,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: KColorSignIn,
                              boxShadow: [
                                KBoxShadow
                              ]),
                          child: Center(
                            child: Container(
                                margin: EdgeInsets.all(8),
                                child: Text("Send Reset Link",style: KContinueWith,)),
                          ),
                        ),
                      )
                    ],
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
