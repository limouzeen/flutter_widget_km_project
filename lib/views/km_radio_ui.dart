import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmRadioUI extends StatefulWidget {
  const KmRadioUI({super.key});

  @override
  State<KmRadioUI> createState() => _KmRadioUIState();
}

class _KmRadioUIState extends State<KmRadioUI> {
  // bool _isSelected = false;
  int pl = 2;
  int? _selectRadio = 2;
  String _selectedOption = 'Pizza';
  String major = 'DTI';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 104, 9, 128),
        title: Text(
          'แชร์ km Radio',
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
              // Radio(
              //   value:
              //       true, // Value represented by this radio button when selected
              //   groupValue: _isSelected, // Current selected value for the group
              //   onChanged: (bool? value) {
              //     setState(() {
              //       _isSelected = value ?? false; // Update the selected value
              //     });
              //   },
              //   activeColor: Colors
              //       .blue, // Color to use when this radio button is selected
              //   visualDensity: VisualDensity(
              //       horizontal: 0,
              //       vertical: -3), // Adjust the size of the radio button
              //   materialTapTargetSize: MaterialTapTargetSize
              //       .shrinkWrap, // Minimize tap target size
              //   focusColor: Colors.green, // Color when radio button has focus
              //   hoverColor:
              //       Colors.yellow, // Color when a pointer is hovering over it
              //   focusNode: FocusNode(), // Optional focus node
              //   autofocus: true, // Autofocus this radio button
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<int>(
                    onChanged: (int? paramValue) {
                      setState(() {
                        _selectRadio = paramValue;
                      });
                    },
                    value: 1,
                    groupValue: _selectRadio,
                  ),
                  Text(
                    'Python',
                  ),
                  Radio<int>(
                    onChanged: (int? paramValue) {
                      setState(() {
                        _selectRadio = paramValue;
                      });
                    },
                    value: 2,
                    groupValue: _selectRadio,
                  ),
                  Text(
                    'JAVA',
                  ),
                  Radio<int>(
                    onChanged: (int? paramValue) {
                      setState(() {
                        _selectRadio = paramValue;
                      });
                    },
                    value: 3,
                    groupValue: _selectRadio,
                  ),
                  Text(
                    'C#',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    onChanged: (paramValue) {
                      setState(() {
                        pl = paramValue!;
                      });
                    },
                    value: 1,
                    groupValue: pl,
                  ),
                  Text(
                    'Python',
                  ),
                  Radio<int>(
                    onChanged: (int? paramValue) {
                      setState(() {
                        pl = paramValue!;
                      });
                    },
                    value: 2,
                    groupValue: pl,
                  ),
                  Text(
                    'JAVA',
                  ),
                  Radio<int>(
                    onChanged: (int? paramValue) {
                      setState(() {
                        pl = paramValue!;
                      });
                    },
                    value: 3,
                    groupValue: pl,
                  ),
                  Text(
                    'C#',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.4,
                  // right: MediaQuery.of(context).size.width * 0.4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Pizza',
                          groupValue: _selectedOption,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                          activeColor: Colors.red,
                        ),
                        Text('Pizza'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'KFC',
                          groupValue: _selectedOption,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                        Text('KFC'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Amazon',
                          groupValue: _selectedOption,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                        Text('Amazon'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Fuji',
                          groupValue: _selectedOption,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                          fillColor: MaterialStateColor.resolveWith((states) => Colors.blueGrey),
                        ),
                        Text('Fuji'),
                      ],
                    ),
                  ],
                ),
              ),
              
              RadioListTile(
                onChanged: (value) {
                  setState(() {
                    major = value!;
                  });
                },
                value: 'DTI',
                groupValue: major,
                title: Text(  
                  'สาขา DTI',
                ),
                subtitle: Text(
                  'Digital Technology and Innovation',
                ),
                secondary: Icon(
                  FontAwesomeIcons.facebook,
                ),
              ),
              RadioListTile(
                onChanged: (value) {
                  setState(() {
                    major = value!;
                  });
                },
                value: 'DM',
                groupValue: major,
                title: Text(  
                  'สาขา DM',
                ),
                subtitle: Text(
                  'Digital Media',
                ),
                secondary: Icon(
                  FontAwesomeIcons.twitter,
                ),
              ),
              RadioListTile(
                onChanged: (value) {
                  setState(() {
                    major = value!;
                  });
                },
                value: 'BC',
                groupValue: major,
                title: Text(  
                  'สาขา BC',
                ),
                subtitle: Text(
                  'Business Computer',
                ),
                secondary: Icon(
                  FontAwesomeIcons.linkedin,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
