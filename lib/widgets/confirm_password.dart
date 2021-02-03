import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({
    Key key,
  }) : super(key: key);

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
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Confirm Password *",
              fillColor: Colors.white,
              hintStyle: KHintStyle,
            ),
            obscureText: true,
          ),
        ));
  }
}