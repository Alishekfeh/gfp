import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

import 'drawer_screen/about_screen.dart';
import 'drawer_screen/conact_screen.dart';
import 'drawer_screen/help_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 24,right: 8),
              child: Image.asset(
                'images/logo.png',
                width: 180,
                height: 80,
              ),

            ),
            SizedBox(height: 8,),
            Divider(color: Colors.black12,height: 2,),
            ListTile(
              leading: Icon(Icons.help_outline,size: 32,color: Color(0xff07303E),),
              title: Text("Helps",style: TextStyle(fontSize: 18,color:Color (0xff07303E)),),
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => HelpScreen()));

              },
            ),
            ListTile(
              leading: Icon(Icons.phone_in_talk,size: 32,color: Color(0xff07303E),),
              title: Text("Contact Us",style: TextStyle(fontSize: 18,color:Color (0xff07303E)),),
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => ContactScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline,size: 32,color: Color(0xff07303E),),
              title: Text("About Us",style: TextStyle(fontSize: 18,color:Color (0xff07303E)),),
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => AboutScreen()));
              },
            ),
            SizedBox(height: 8,),
            Divider(color: Colors.black12,height: 2,),
            ListTile(
              leading: Icon(Icons.language,size: 32,color: Color(0xff07303E),),
              title: Text("Language (AR)",style: TextStyle(fontSize: 18,color:Color (0xff07303E)),),

            ),

            ListTile(
              leading: Icon(CommunityMaterialIcons.logout,size: 32,color: Color(0xff07303E),),
              title: Text("Sign Out",style: TextStyle(fontSize: 18,color:Color (0xff07303E)),),
            ),

          ],
        )
    );
  }
}
