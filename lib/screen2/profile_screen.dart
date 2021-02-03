import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 37, right: 30,bottom: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 45,right: 140,bottom: 10),
              child: Text("Welcome Ali",style: KSignIntoYourAccount,)),
        Expanded (
           child: ListView(


             shrinkWrap: true ,

             children: <Widget>[
               MaterialCard(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when"
                 ,title: "Under Review",color: Color(0xff3FB569),),
               MaterialCard(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when"
                 ,title: "Rejected",color: Color(0xffD23939),),

               MaterialCard(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when"
                 ,title: "Pending",color: Color(0xff07303E),),
               MaterialCard(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when"
                 ,title: "Pending",color: Color(0xff07303E),),
             ],
           ),
         ),




        ],
      ),
    );
  }
}

class MaterialCard extends StatelessWidget {
  final Color color;
  final String title,text;

  const MaterialCard({Key key, this.color, this.title, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8,right: 8,left: 8,bottom: 20),
      child: Container(
        height: 140,
        child: Material(
          color: Color(0xffF0F3F5),
          elevation: 5.0,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  height: 140,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8) ),
                    color: color,
                  ),

                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              heightFactor: 1.5,
                              alignment: Alignment.topLeft,
                              child: Container(
                                child: Text(
                                  title,style: KTitleCard,
                                ),

                              ),
                            ),
                            Align(
                              heightFactor: 1.3,
                              alignment: Alignment.topRight,
                              child: Container(
                                  child:Column(
                                    children: <Widget>[
                                      Icon(
                                          Icons.close
                                      ),
                                    ],
                                  )
                              ),
                            ),
                          ],
                        ),


                        Align(
                          heightFactor: 1.2,
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child:Column(
                              children: <Widget>[
                                Text(text)
                              ],
                            )
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


