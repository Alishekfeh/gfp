import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 37, right: 30),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                sizedBox22,
                Container(
                  width: double.infinity,
                  child: Text(
                    "About US",
                    style: KSignIntoYourAccount,
                  ),
                ),
                sizedBox22,
                sizedBox8,
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsu"
                  "m has been the industry's standard dumm"
                  "y text ever since the 1500s, whenLorem Ipsum is simply dummy text of the p"
                  "rinting and typesetting industry. Lorem Ipsu"
                  "m has been the industry's standard dumm"
                  "y text ever since the 1500s, whenLorem Ipsum is simply dummy text of the p"
                  "rinting and typesetting industry. Lorem Ipsu"
                  "m has been the industry's standard dumm"
                  "y text ever since the 1500s, when",style: TextStyle(
                  fontSize: 18,letterSpacing: 0.9
                ),),

                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
