import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  final TextEditingController _passwordConfirmFilter =
      new TextEditingController();
  String _email = "";
  String _password = "";
  String _passwordConfirm = "";

  _SignUpState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
    _passwordConfirmFilter.addListener(_passwordConfirmListen);
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

  void _passwordConfirmListen() {
    if (_passwordConfirmFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordConfirmFilter.text;
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
                  ),
                  new Container(
                    child: new TextField(
                      controller: _passwordConfirmFilter,
                      decoration: new InputDecoration(
                          labelText: 'Confirma tu contraseña'),
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
                    child: new Text('Registrarme'),
                    onPressed: () => {Navigator.pushNamed(context, '/login')},
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
