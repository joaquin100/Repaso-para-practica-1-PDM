import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({Key key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String _valueOfButton1 = ":)";
  String _valueOfButton2 = ":3";
  String _valueOfButton3 = ":v";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 3'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(_valueOfButton1);
            },
            child: Text(
              "$_valueOfButton1",
              style: TextStyle(color: Colors.black),
            ),
            color: Colors.grey,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(_valueOfButton2);
            },
            child: Text(
              "$_valueOfButton2",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(_valueOfButton3);
            },
            child: Text(
              "$_valueOfButton3",
              style: TextStyle(color: Colors.black),
            ),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
