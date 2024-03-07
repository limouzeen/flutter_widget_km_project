import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class KmBnb01UI extends StatefulWidget {
  const KmBnb01UI({super.key});

  @override
  State<KmBnb01UI> createState() => _KmBnb01UIState();
}

class _KmBnb01UIState extends State<KmBnb01UI> {

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
        'แชร์ KM BNB 01',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      ),
      body: _showView[_CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _CurrentIndex,
        unselectedItemColor: Colors.grey[400],
        onTap: (value) {
          setState(() {
            _CurrentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
            ),
            label: 'facebook',
            backgroundColor: Color.fromARGB(255, 43, 6, 143),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.google,
            ),
            label: 'google',
            backgroundColor: Color.fromARGB(255, 238, 50, 3),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.twitter,
            ),
            label: 'twitter',
            backgroundColor: Color.fromARGB(255, 3, 214, 230),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.line,
            ),
            label: 'line',
            backgroundColor: Color.fromARGB(255, 58, 214, 97),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.linkedin,
            ),
            label: 'linkedin',
            backgroundColor: Color.fromARGB(255, 29, 202, 255),
          ),


        ],
      ),
    );
  }
}