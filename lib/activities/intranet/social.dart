import 'package:cuida_quintana/models/comment.dart';
import 'package:flutter/material.dart';

class Social extends StatefulWidget {
  Social({Key key}) : super(key: key);

  @override
  _SocialState createState() => new _SocialState();
}

class _SocialState extends State<Social> {
  final List<Comment> commentList = [
    new Comment(
        subject: 'Buenas tardes',
        content:
            'Me gustaría por favor saludar a la comunidad de las quintanas y recordarles tomar y ahorrar el agua potable',
        date: 'Julio 23, 2020'),
    new Comment(
        subject: 'Humo de carros',
        content:
            'No creen que la avenida próxima tiene una calidad de aire terrible?',
        date: 'Diciembre 13, 2020'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: commentList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.account_circle, size: 50),
                    title: Text(commentList[index].subject),
                    subtitle: Text(commentList[index].content),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        iconSize: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: Icon(Icons.thumb_down),
                        iconSize: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add/comment');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
