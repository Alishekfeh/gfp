import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

import 'package:sahab_app/main_drawer.dart';
import 'package:sahab_app/screen2/camera_page.dart';
import 'package:sahab_app/screen2/home_page.dart';
import 'package:sahab_app/screen2/profile_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var scaffoldKey=GlobalKey<ScaffoldState>();
  int currentTabIndex = 0;
  List<Widget> page;
  Widget currentPage;
  HomePage homePage;
  CameraPage cameraPage;
  ProfileScreen profileScreen;
    int selectedPos = 0;
  double bottomNavBarHeight = 80;
  List<TabItem> tabItems = List.of([

    new TabItem(Icons.home, "Home", Colors.white, labelStyle: TextStyle(color: Color(0xff626B70), fontWeight: FontWeight.bold)),
    new TabItem(Icons.camera_alt, "New", Colors.white, labelStyle: TextStyle(color: Color(0xff626B70), fontWeight: FontWeight.bold)),
    new TabItem(Icons.person, "Profile", Colors.white, labelStyle: TextStyle(color: Color(0xff626B70), fontWeight: FontWeight.bold)),

  ]);

  CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
    homePage = HomePage();
    cameraPage=CameraPage();
    profileScreen=ProfileScreen();
    super.initState();
    page = [homePage,cameraPage,profileScreen];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MainDrawer(),
      body: Stack(
        children: <Widget>[
          Align( child: currentPage),
          Padding(
              padding: EdgeInsets.only(top: 28,left: 20),
              child:Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed:(){
                    scaffoldKey.currentState.openDrawer();
                  }, icon: Icon(Icons.menu,size: 35,color: Color(0xff3FB569),), )
              )
          ),

          Padding(

            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),

          Align(alignment: Alignment.bottomCenter, child: bottomNav()),





        ],
      ),
    );
  }



  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,

      selectedIconColor: Color(0xff626B70),
      normalIconColor: Color(0xff626B70),
      controller: _navigationController,
      barHeight: bottomNavBarHeight,
      selectedPos: currentTabIndex,
      barBackgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) {
        setState(() {
          // this.selectedPos = selectedPos;
          currentTabIndex = selectedPos;
          currentPage = page[selectedPos];
        });
      },
    );
  }
}
