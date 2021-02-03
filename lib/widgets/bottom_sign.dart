import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class BottomSign extends StatelessWidget {
  final String title;

  const BottomSign({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 37,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: KColorSignIn,
          boxShadow: [
            KBoxShadow
          ]),
      child: Center(
        child: Text(title,style: KContinueWith,),
      ),
    );
  }
}