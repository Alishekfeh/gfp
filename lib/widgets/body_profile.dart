import 'package:flutter/material.dart';

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 70,
        ),
        Container(
          margin: EdgeInsets.only(left: 16),
          child: Text(
            "Account Info",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        AccountInfo(title1: "Name",title2: "Ali",icon: Icons.person,),
        AccountInfo(title1: "Mobile",title2: "+962-00000000",icon: Icons.phone_android,),
        AccountInfo(title1: "Email",title2: "Ali@gmail.com",icon: Icons.email,),
        AccountInfo(title1: "Address",title2: "Tareq",icon: Icons.not_listed_location,),




      ],
    );
  }
}

class AccountInfo extends StatelessWidget {
  final String title1,title2;
  final IconData icon;

  const AccountInfo({Key key, this.title1, this.title2, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      child: Row(
        children: <Widget>[
          Icon (icon,),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title1,
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  title2,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
