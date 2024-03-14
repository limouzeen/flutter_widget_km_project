import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmCheckboxUI extends StatefulWidget {
  const KmCheckboxUI({super.key});

  @override
  State<KmCheckboxUI> createState() => _KmCheckboxUIState();
}

class _KmCheckboxUIState extends State<KmCheckboxUI> {
  bool _chk01 = false;
  bool _chk02 = false;

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Checkbox(
                onChanged: (paramValue) {
                  setState(() {
                    _chk01 = paramValue!;
                  });
                },
                value: _chk01,
                checkColor: Colors.red,
                activeColor: Colors.yellow,
                side: BorderSide(
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.04,
                  right:MediaQuery.of(context).size.height * 0.04,
                ),
                child: CheckboxListTile(
                  onChanged: (paramValue) {
                    setState(() {
                      _chk02 = paramValue!;
                    });
                  },
                  value: _chk02,
                  title: Text(
                    'JAVA',
                  ),
                  subtitle: Text(
                    'Programming',
                  ),
                  secondary: Icon(
                    FontAwesomeIcons.java,
                    color: Colors.red,
                  ),
                  selected: true,
                  isThreeLine: true,
                  dense: true,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  tileColor: Color.fromARGB(255, 251, 187, 230),
                  selectedTileColor: Color.fromARGB(255, 250, 229, 233),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
