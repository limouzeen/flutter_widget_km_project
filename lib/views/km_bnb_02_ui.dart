import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class KmBnb02UI extends StatefulWidget {
  const KmBnb02UI({super.key});

  @override
  State<KmBnb02UI> createState() => _KmBnb02UIState();
}

class _KmBnb02UIState extends State<KmBnb02UI> {

  List<Widget> _showView = [

    View1UI(),
    View2UI(),
    View3UI(),
    View4UI(),
    View5UI(),

  ];

  //สร้างตัวแปรเก็บหมายเลข current index
  int _CurrentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
        'แชร์ KM BNB 02',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      ),
      body: _showView[_CurrentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _CurrentIndex,
        // unselectedItemColor: Colors.grey[400],
        onTap: (value) {
          setState(() {
            _CurrentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
            ),
            title: Text(
              'facebook',
            ),
            selectedColor: Color.fromARGB(255, 43, 6, 143),
            unselectedColor: Colors.grey[400]
            
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.google,
            ),
            // label: 'google',
            // backgroundColor: Color.fromARGB(255, 238, 50, 3),
            title: Text(
              'google',
            ),
            selectedColor: Color.fromARGB(255, 238, 50, 3),
            unselectedColor: Colors.grey[400]
            
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.twitter,
            ),
            // label: 'twitter',
            // backgroundColor: Color.fromARGB(255, 3, 214, 230),
            title: Text(
              'twitter',
            ),
            selectedColor: Color.fromARGB(255, 3, 214, 230),
            unselectedColor: Colors.grey[400]
            
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.line,
            ),
            // label: 'line',
            // backgroundColor: Color.fromARGB(255, 58, 214, 97),
            title: Text(
              'line',
            ),
            selectedColor: Color.fromARGB(255, 58, 214, 97),
            unselectedColor: Colors.grey[400]
            
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.linkedin,
            ),
            // label: 'linkedin',
            // backgroundColor: Color.fromARGB(255, 29, 202, 255),
            title: Text(
              'linkedin',
            ),
            selectedColor: Color.fromARGB(255, 29, 202, 255),
            unselectedColor: Colors.grey[400]
            
          ),


        ],
      ),
    );
  }
}