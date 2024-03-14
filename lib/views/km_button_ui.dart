import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmButtonUI extends StatefulWidget {
  const KmButtonUI({super.key});

  @override
  State<KmButtonUI> createState() => _KmButtonUIState();
}

class _KmButtonUIState extends State<KmButtonUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'แชร์ km Checkbox',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'DTI Click',
                style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/google.png',
                // width: MediaQuery.of(context).size.width *
                //     0.5, // Adjust the factor as needed
                // height: MediaQuery.of(context).size.width *
                //     0.5, // Adjust the factor as needed
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 124, 122, 255),
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.12,
                  MediaQuery.of(context).size.height * 0.12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.facebook,
                color: Colors.white,
              ),
              label: Text(
                'Facebook',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 23, 20, 180),
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'DTI Click',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  // fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                side: BorderSide(
                  color: Colors.red, // Set the border color here
                  width: 2.0, // Set the border width
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/google.png',
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.12,
                  MediaQuery.of(context).size.height * 0.12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                side: BorderSide(
                  color: Colors.red, // Set the border color here
                  width: 2.0, // Set the border width
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Color.fromARGB(255, 46, 10, 175),
                  ),
                  SizedBox(
                      width: 8), // Adjust the spacing between icon and text
                  Text(
                    'Facebook',
                    style: TextStyle(
                      color: Color.fromARGB(255, 46, 10, 175),
                      fontSize: MediaQuery.of(context).size.height *
                          0.025, // Adjust font size as needed
                    ),
                  ),
                ],
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                side: BorderSide(
                  color: Color.fromARGB(
                      255, 15, 36, 155), // Set the border color here
                  width: 2.0, // Set the border width
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
