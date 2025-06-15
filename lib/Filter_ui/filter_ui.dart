import 'package:flutter/material.dart';

class filter_ui extends StatelessWidget {
  const filter_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'UI_Sample', home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242046),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(36),
            decoration: BoxDecoration(
              color: Color(0xFF322e59),
              borderRadius: BorderRadius.all(Radius.circular(55)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filter',
                      style: TextStyle(
                        color: Color(0xFFbab9ce),
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kula',
                      ),
                    ),
                    Icon(Icons.close, color: Color(0xFFbab9ce), size: 35),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'SEARCH BY KEYBOARD',

                  style: TextStyle(color: Color(0xFFbab9ce)),
                ),
                SizedBox(height: 6),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF242046),
                    hintText: 'Search jobs',
                    hintStyle: TextStyle(color: Colors.white54),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 36,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Color(0xFFbab9ce)),
                ),
                SizedBox(height: 30),

                Text(
                  'VIEW',
                  style: TextStyle(
                    color: Color(0xFFbab9ce),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 10),

                RadioDemo(),

                SizedBox(height: 30),

                Text(
                  'INCLUDE',
                  style: TextStyle(
                    color: Color(0xFFbab9ce),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                Row(
                  children: [
                    Transform.scale(scale: 1.8, child: CheckBox()),

                    Text(
                      'jobs shred with me',
                      style: TextStyle(color: Color(0xFFbab9ce)),
                    ),
                  ],
                ),

                Spacer(),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFB74D),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Save changes',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum Choices { choice1, choice2, choice3 }

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => RadioJobeState();
}

class RadioJobeState extends State<RadioDemo> {
  Choices? _choice = Choices.choice1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Transform.scale(
              scale: 2,
              child: Radio<Choices>(
                activeColor: Color(0xFFbab8d0),
                value: Choices.choice1,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            Text('All job posts', style: TextStyle(color: Color(0xFFbab9ce))),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 2,
              child: Radio<Choices>(
                activeColor: Color(0xFFbab8d0),
                value: Choices.choice2,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            Text(
              'Active job posts',
              style: TextStyle(color: Color(0xFFbab9ce)),
            ),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 2,
              child: Radio<Choices>(
                activeColor: Color(0xFFbab8d0),
                value: Choices.choice3,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            Text(
              'Archived job posts',
              style: TextStyle(color: Color(0xFFbab9ce)),
            ),
          ],
        ),
      ],
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => CheckBoxState();
}

class CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Color(0xFFbab8d0),
      hoverColor: Color.fromARGB(255, 8, 5, 33),
      checkColor: Color.fromARGB(255, 12, 10, 29),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
