import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class PasswordWidget extends StatefulWidget {

  @override
  _PasswordWidgetState createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
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
          child: buildTextFieldPassword("Password")),
    );
  }
  Widget buildTextFieldPassword(String hintText) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          fillColor: Colors.white,
          hintStyle: KHintStyle,


          // prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
          suffixIcon: hintText == "Password"
              ? IconButton(
            onPressed: _toggleVisibility,
            icon: _isHidden
                ? Icon(
              Icons.visibility_off,
              color: Colors.grey,
            )
                : Icon(
              Icons.visibility,
              color: Colors.grey,
            ),
          )
              : null,
        ),
        obscureText: hintText == "Password" ? _isHidden : false,
      ),
    );
  }
}
