import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 37, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 50,right: 140,bottom: 30),
                child: Text("Welcome Ali",style: KSignIntoYourAccount,)),
            Container(
              child: Column(
                children: <Widget>[
                  CardTextHome(),
                  CardTextHome(),
                  CardTextHome(),
                  CardTextHome(),
                  CardTextHome(),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

class CardTextHome extends StatelessWidget {
  const CardTextHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        color: Color(0xffF0F3F5),
        child: Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.only(right: 8,left: 16,top: 8,bottom: 24),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when",style: TextStyle(
            fontSize: 16,
            letterSpacing: 0.3,
            fontWeight: FontWeight.w400
          ),),
        ),
      ),
    );
  }
}
