import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class RowSign extends StatelessWidget {
  final String title1,title2;
  final Function onTao;

  const RowSign({Key key, @required this.title1, @required this.title2,this.onTao}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          title1,style: KKeepMe,
        ),
        GestureDetector(
            onTap: onTao,
            child: Text(title2,style: KSign))
      ],
    );
  }
}