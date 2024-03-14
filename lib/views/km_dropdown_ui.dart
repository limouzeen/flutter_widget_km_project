import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmDropdownUI extends StatefulWidget {
  const KmDropdownUI({super.key});

  @override
  State<KmDropdownUI> createState() => _KmDropdownUIState();
}

class _KmDropdownUIState extends State<KmDropdownUI> {
  List<String> _plList = ['JAVA', 'Python', 'C#', 'Go', 'Dart'];
  List<String> _uList = ['SAU', 'TU', 'CMU', 'CHULA', 'MU'];
  List<String> _fList = ['Pizza', 'KFC', 'Amazon', 'Fuji'];

  String _programming = 'JAVA';
  String _university = 'CMU';
  String _food = 'Pizza';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 244, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 100, 218),
        title: Text(
          'แชร์ km Dropdown',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.05,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _programming,
                    onChanged: (value) {
                      setState(() {
                        _programming = value!;
                      });
                    },
                    items: _plList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    // underline: SizedBox(),
                    isExpanded: true,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        10), // Set border radius to make it circular
                    border: Border.all(
                        color:
                            Color.fromARGB(255, 153, 38, 163)), // Border color
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: DropdownButton(
                    value: _university,
                    onChanged: (paramValue) {
                      setState(() {
                        _university = paramValue!;
                      });
                    },
                    items: _uList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.holiday_village,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  Text(e),
                                ],
                              ),
                            ))
                        .toList(),
                    underline: SizedBox(),
                    isExpanded: true,
                    dropdownColor: Color.fromARGB(
                        255, 234, 254, 255), // Background color of the dropdown
                    icon: Icon(Icons.arrow_drop_down,
                        color: Colors.black), // Dropdown icon color
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 241, 246),
                    borderRadius: BorderRadius.circular(
                        10), // Set border radius to make it circular
                    border: Border.all(
                        color:
                            Colors.red), // Border color
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: DropdownButton<String>(
                    value: _food,
                    onChanged: (newValue) {
                      setState(() {
                        _food = newValue!;
                      });
                    },
                    items: _fList.map((food) {
                      return DropdownMenuItem<String>(
                        value: food,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(food + '  <=>'),
                            SizedBox(width: MediaQuery.of(context).size.height * 0.02,), // Space between text and icon
                            Icon(
                              FontAwesomeIcons.bowlFood,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                     isExpanded: true,
                     underline: SizedBox(),
                     dropdownColor: Color.fromARGB(255, 255, 241, 246),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
