import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
import 'package:sahab_app/screen/sign_in.dart';
import 'package:sahab_app/widgets/confirm_password.dart';
import 'package:sahab_app/widgets/password.dart';
class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                      "Reset Password",
                      style: KSignIntoYourAccount,
                    ),
                  ),
                  sizedBox8,
                  Text(
                    "Please enter your new password.",style: KPleaseEnter,
                  ),
                  sizedBox22,
                  PasswordWidget(),
                  sizedBox22,
                  ConfirmPassword(),
                  sizedBox22,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[
                      GestureDetector(
                          onTap:  () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => SignIn()));
                            },
                          child: Text("Cancel",style: KSign,)),
                      Container(

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
                              child: Text("Reset Password",style: KContinueWith,)),
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
