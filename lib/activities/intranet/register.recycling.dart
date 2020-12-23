import 'package:flutter/material.dart';

class RegisterRecycling extends StatefulWidget {
  RegisterRecycling({Key key}) : super(key: key);

  @override
  _RegisterRecyclingState createState() => new _RegisterRecyclingState();
}

class _RegisterRecyclingState extends State<RegisterRecycling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: new TextField(
                      decoration: new InputDecoration(labelText: 'Nombre'),
                    ),
                  ),
                  new Container(
                    child: new TextField(
                      decoration: new InputDecoration(labelText: 'Tipo'),
                      obscureText: true,
                    ),
                  ),
                  new Container(
                    child: new TextField(
                      decoration: new InputDecoration(labelText: 'Peso'),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: new Column(
                children: <Widget>[
                  new RaisedButton(
                    child: new Text('Guardar'),
                    onPressed: () => {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
