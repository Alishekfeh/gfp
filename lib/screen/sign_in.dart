import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
import 'package:sahab_app/screen/sign_up.dart';
import 'package:sahab_app/widgets/bottom_sign.dart';
import 'package:sahab_app/widgets/continue_with.dart';
import 'package:sahab_app/widgets/password.dart';
import 'package:sahab_app/widgets/phone_number.dart';
import 'package:sahab_app/widgets/row_sign.dart';

import 'forgot_password.dart';
import '../main_screen.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController number = TextEditingController();

  bool _checked = false;



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
                      "Sign In to Your Account",
                      style: KSignIntoYourAccount,
                    ),
                  ),
                  sizedBox22,
                  ContinueWith(
                    image: 'images/facebook.png',
                    continueWith: 'Continue with Facebook',
                    color: KColorFaceBook,
                  ),
                  sizedBox20,
                  ContinueWith(
                    image: 'images/google-symbol.png',
                    continueWith: 'Continue with Google',
                    color: KColoGoogle,
                  ),
                  sizedBox22,
                  PhoneNumberInput(number: number),
                  sizedBox22,
                  PasswordWidget(),
                  SizedBox(height: 8),
                  CheckboxListTile(
                    title: Text(
                      "Keep me signed in",
                      style: KKeepMe,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _checked,
                    onChanged: (bool value) {
                      setState(() {
                        _checked = value;
                      });
                    },
                  ),
                  sizedBox8,
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => MainScreen()));
                    },
                    child: BottomSign(
                      title: "Sign In",
                    ),
                  ),
                  sizedBox20,
                  RowSign(
                    title1: "Don’t have an account?",
                    title2: "  Sign Up",
                    onTao: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignUp()));
                    },
                  ),
                  sizedBox20,
                  RowSign(
                      title1: "Forgot your password?",
                      title2: "  Reset Password",
                    onTao: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => ForgotPassword()));
                    },
                  ),
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
