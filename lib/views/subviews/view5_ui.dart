import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class View5UI extends StatelessWidget {
  const View5UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.linkedin,
              size: MediaQuery.of(context).size.width * 0.75,
              color: Color.fromARGB(255, 73, 197, 255),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              'LinkedIn',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.026,
              ),
            ),

          ],
        ),
      ),
    );
  }
}