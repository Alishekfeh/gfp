import 'package:flutter/material.dart';

class BtnBackCustom extends StatefulWidget {
  @override
  _BtnBackCustomState createState() => _BtnBackCustomState();
}

class _BtnBackCustomState extends State<BtnBackCustom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
                offset: Offset(1.0, 5.0),
              ),
            ],
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff07303E), Colors.purple],
            )),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                " Back to\n Camera",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
