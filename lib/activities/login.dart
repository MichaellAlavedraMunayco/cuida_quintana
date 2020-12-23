import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";

  _LoginState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: new TextField(
                      controller: _emailFilter,
                      decoration:
                          new InputDecoration(labelText: 'Correo electrónico'),
                    ),
                  ),
                  new Container(
                    child: new TextField(
                      controller: _passwordFilter,
                      decoration: new InputDecoration(labelText: 'Contraseña'),
                      obscureText: true,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: new Column(
                children: <Widget>[
                  new RaisedButton(
                    child: new Text('Ingresar'),
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/intranet')},
                  ),
                  new FlatButton(
                    child: new Text('¿No tienes una cuenta? Regístrate'),
                    textColor: Colors.green,
                    onPressed: () => {
                      {Navigator.pushNamed(context, '/sign/up')}
                    },
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
