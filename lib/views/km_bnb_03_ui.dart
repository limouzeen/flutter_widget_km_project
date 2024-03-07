import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmBnb03UI extends StatefulWidget {
  const KmBnb03UI({super.key});

  @override
  State<KmBnb03UI> createState() => _KmBnb03UIState();
}

class _KmBnb03UIState extends State<KmBnb03UI> {
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
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color.fromARGB(255, 18, 17, 20), // Make the ConvexAppBar transparent
        // currentIndex: _CurrentIndex,
        // unselectedItemColor: Colors.grey[400],
        activeColor: Colors.white,
        initialActiveIndex: 2,
        onTap: (value) {
          setState(() {
            _CurrentIndex = value;
          });
        },
        items: [
          TabItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
              color: Color.fromARGB(255, 43, 6, 143),
            ),
            // label: 'facebook',
            // backgroundColor: Color.fromARGB(255, 43, 6, 143),
            title: 'facebook',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.google,
              color: Color.fromARGB(255, 238, 50, 3),
            ),
            title: 'google',
            // label: 'google',
            // backgroundColor: Color.fromARGB(255, 238, 50, 3),
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.twitter,
              color: Color.fromARGB(255, 3, 214, 230),
            ),
            title: 'twitter',
            // label: 'twitter',
            // backgroundColor: Color.fromARGB(255, 3, 214, 230),
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.line,
              color: Color.fromARGB(255, 58, 214, 97),
            ),
            // label: 'line',
            // backgroundColor: Color.fromARGB(255, 58, 214, 97),
            title: 'line',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.linkedin,
              color: Color.fromARGB(255, 29, 202, 255),
            ),
            // label: 'linkedin',
            // backgroundColor: Color.fromARGB(255, 29, 202, 255),
            title: 'linkedin',
          ),
        ],
      ),
    );
  }
}
