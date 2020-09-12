import 'package:flutter/material.dart';
import 'package:reparso_para_practica1/second_page.dart';
import 'package:reparso_para_practica1/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  String _datosDeSecondPage;
  String _datoDeThirdPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea 1'),
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.white],
            stops: [0.2, 0.5],
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  "BIENVENIDOS",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Image.network(
                  "https://miro.medium.com/max/3252/1*YWLkxromkAfNXyro145prw.png"),
              flex: 3,
            ),
            /*Expanded(
              child: Text("Seleccione la acción a realizar:"),
            )*/
            Expanded(
              child: Center(
                child: Text(
                  "Seleccione la acción a realizar:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            title: Text("Ingrese datos"),
                            content: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                labelText: 'Ingrese palabra',
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancelar"),
                              ),
                              FlatButton(
                                onPressed: () async {
                                  _datosDeSecondPage =
                                      await Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SecondPage(dato: _controller.text),
                                    ),
                                  );

                                  setState(() {});

                                  Navigator.of(context).pop();
                                },
                                child: Text("Aceptar"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      "Página 2",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                  MaterialButton(
                    onPressed: () async {
                      _datoDeThirdPage = await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                        ),
                      );

                      setState(() {});
                    },
                    child: Text(
                      "Página 3",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Text("Pg.2 ==>${_datosDeSecondPage ?? ""}"),
              ),
            ),
            Expanded(
              child: Center(
                child: Text("Pg.3 ==>${_datoDeThirdPage ?? ""}"),
              ),
            )
            /*Expanded(
              child: Text("Pg.2 ==>"),
            ),
            Expanded(
              child: Text("Pg.3 ==>"),
            )*/
          ],
        ),
      ),
    );
  }
}
