import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class ContinueWith extends StatelessWidget {
  final String image;
  final String continueWith;
  final Color color;

  const ContinueWith({Key key,@required this.image, @required this.continueWith,@required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 37,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
          boxShadow: [
            KBoxShadow
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 20),
            child: Image.asset(
              image,
              width: 22,
              height: 22,
              color: KWhite,
            ),
          ),
          Text(
            continueWith,
            style: KContinueWith,
          )
        ],
      ),
    );
  }
}