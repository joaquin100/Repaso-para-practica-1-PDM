import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondPage extends StatefulWidget {
  final String dato;
  SecondPage({Key key, @required this.dato}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // ignore: non_constant_identifier_names
  int random_number = 1 + new Random().nextInt(10000 - 1);
  String infoToHomePage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Página 2'),
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue[200]],
              stops: [0.3, 0.5],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "Generar un número aleatorio",
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 18,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "$random_number",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 25,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              MaterialButton(
                onPressed: () {
                  random_number = 1 + new Random().nextInt(10000 - 1);
                  setState(() {});
                },
                child: Text(
                  "Generar",
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  infoToHomePage = widget.dato + random_number.toString();
                  Navigator.of(context).pop(infoToHomePage);
                },
                child: Text(
                  "Guardar",
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
