import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class InsertNameAndLastName extends StatelessWidget {
  final String title;

  const InsertNameAndLastName({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: KWhite,
          border: Border.all(color: KBlack, width: 0.2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [KBoxShadow]),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:title ,
                fillColor: Colors.white,
                hintStyle: KHintStyle,



              ),
            )),
      ),);
  }
}