import 'package:flutter/material.dart';
class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(
              Icons.check,size: 35,color: Color(0xff405A94),
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.only(right: 8,top: 16,left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  Container(
                    height: 75,
                    width: 75,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,bottom: 20),
                    child: Container(
                      height: 50,
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.black26,



                          hintText: "Problem Title...",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,

                          )
                        ),

                      ),
                    ),
                  )
                  // TextFormField(
                  //   keyboardType: TextInputType.number,
                  //   decoration: InputDecoration(
                  //       prefixIcon: Padding(
                  //         padding: EdgeInsets.all(0.0),
                  //         child: Icon(Icons.person,
                  //             size: 40.0, color: Colors.white),
                  //       ),
                  //       hintText: "Input your opinion",
                  //       hintStyle: TextStyle(color: Colors.white30),
                  //       border: OutlineInputBorder(
                  //           borderRadius:
                  //           BorderRadius.all(new Radius.circular(25.0))),
                  //       labelStyle: TextStyle(color: Colors.white)),
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 25.0,
                  //   ),
                  //
                  // )

                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black12,
            height: 2,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30.0,right: 30),
            child: Container(
              height: 60,
              width: double.infinity,
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.black26,



                    hintText: "Problem description...",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,

                    )
                ),

              ),
            ),
          )
        ],
      ),
    );
  }
}
