import 'package:cuida_quintana/models/object.dart';
import 'package:flutter/material.dart';

class RecyclingList extends StatefulWidget {
  RecyclingList({Key key}) : super(key: key);

  @override
  _RecyclingListState createState() => new _RecyclingListState();
}

class _RecyclingListState extends State<RecyclingList> {
  final List<Object> objectList = [
    new Object(
        name: 'Bolsa de botellas',
        type: 'Plástico',
        weight: '2.0Kg',
        date: 'Diciembre 10, 2020'),
    new Object(
        name: 'Bolsa de cáscaras',
        type: 'Orgánico',
        weight: '1.0Kg',
        date: 'Diciembre 14, 2020'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: objectList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.perm_media, size: 50),
                    title: Text(objectList[index].name),
                    subtitle: Text(
                        'Reciclaste ${objectList[index].weight} de ${objectList[index].type} el día ${objectList[index].date}'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
