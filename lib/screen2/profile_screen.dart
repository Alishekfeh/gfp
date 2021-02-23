import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
import 'package:sahab_app/widgets/body_profile.dart';
import 'package:sahab_app/widgets/button_profile.dart';

import 'camera_page.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return
        // padding: const EdgeInsets.only(left: 30, top: 37, right: 30,bottom: 100),
    ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 300,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: Color(0xff008831),

                        ),
                        // Container(
                        //   padding: EdgeInsets.all(16),
                        //   child: Icon(
                        //     Icons.arrow_back,
                        //     color: Colors.white,
                        //   ),
                        // ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "images/sahhhab.jpg",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "@Ali",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "ali@gmail.com",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: BodyContent(),
                  )
                ],
              ),
              Positioned(
                  top: 276, left: 50, right: 50, child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => CameraPage()));
                  },
                  child: BtnBackCustom())),
            ],
          ),
        ),
      ],
    );

    }
}
//Padding(
//       padding: const EdgeInsets.only(left: 30, top: 37, right: 30,bottom: 100),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Padding(
//               padding: EdgeInsets.only(top: 45,right: 140,bottom: 10),
//               child: Text("Welcome Ali",style: KSignIntoYourAccount,)),
//         Expanded (
//            child: ListView(
//
//
//              shrinkWrap: true ,
//
//              children: <Widget>[
//                MaterialCard(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when"
//                  ,title: "Under Review",color: Color(0xff3FB569),),
//                MaterialCard(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when"
//                  ,title: "Rejected",color: Color(0xffD23939),),
//
//                MaterialCard(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when"
//                  ,title: "Pending",color: Color(0xff07303E),),
//                MaterialCard(text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when"
//                  ,title: "Pending",color: Color(0xff07303E),),
//              ],
//            ),
//          ),
//
//
//
//
//         ],
//       ),
//     );
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


