import 'package:cuida_quintana/models/menu.item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title, this.menuItemList}) : super(key: key);

  final String title;

  final List<MenuItem> menuItemList;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: ListView.builder(
          itemCount: widget.menuItemList.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                      ListTile(
                          leading: Icon(widget.menuItemList[index].icon),
                          title: Text(widget.menuItemList[index].title),
                          subtitle: Text(widget.menuItemList[index].subtitle)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('VER'),
                              onPressed: () {
                                Navigator.pushNamed(context,
                                    '/${widget.menuItemList[index].activity}');
                              },
                            ),
                            const SizedBox(width: 8),
                          ]),
                    ])));
          },
        ));
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                title: Text("Bienvenido"),
                content: Text(
                    "Le brindamos como información métodos de reciclaje sencillos que puede seguir para constribuir al desarrollo sostenible de nuestro vivir siendo el enfoque la zona Urb. Las Quintanas.\n\nTiene también la opción de mantener un registro al cual se le puede añadir contenido un buen detalle.\n\nContamos con una caja de comentarios que es de libre expresión para compartir ideas, comentar acerca de la aplicación o brindar recomendaciones."),
                actions: <Widget>[
                  TextButton(
                    child: Text('Continuar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ]));
  }
}
