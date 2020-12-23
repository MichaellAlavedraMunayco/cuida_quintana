import 'package:flutter/material.dart';

class AddComment extends StatefulWidget {
  AddComment({Key key}) : super(key: key);

  @override
  _AddCommentState createState() => new _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  final TextEditingController _subjectFilter = new TextEditingController();
  final TextEditingController _commentFilter = new TextEditingController();
  String _subject = "";
  String _comment = "";

  _AddCommentState() {
    _subjectFilter.addListener(_subjectListen);
    _commentFilter.addListener(_commentListen);
  }

  void _subjectListen() {
    if (_subjectFilter.text.isEmpty) {
      _subject = "";
    } else {
      _subject = _subjectFilter.text;
    }
  }

  void _commentListen() {
    if (_commentFilter.text.isEmpty) {
      _comment = "";
    } else {
      _comment = _commentFilter.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar comentario'),
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
                      controller: _subjectFilter,
                      decoration: new InputDecoration(labelText: 'Asunto'),
                    ),
                  ),
                  new Container(
                    child: new TextField(
                      controller: _commentFilter,
                      decoration: new InputDecoration(labelText: 'Comentario'),
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
                    child: new Text('Guardar'),
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/intranet')},
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
