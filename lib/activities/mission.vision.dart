import 'package:flutter/material.dart';

class MissionVision extends StatefulWidget {
  MissionVision({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MissionVisionState createState() => _MissionVisionState();
}

class _MissionVisionState extends State<MissionVision> {
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
                });
          },
        ),
      ),
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                    leading: Icon(Icons.bookmark), title: const Text('Misión')),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Con esta aplicación buscamos incrementar la culturae reciclaje, concientizando a nuestros usuarios a llevar un registro y control de sus desechos y, de esta manera, percatarnos de la cantidad de la misma y si existen maneras de reducirla',
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                Image.asset('assets/mission.jpg'),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                    leading: Icon(Icons.bookmark), title: const Text('Visión')),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Ser una aplicación estandarizada entre las personas, a nivel local, generando un antes y un después en la generación de residuos, creando una cultura de reciclaje y concientización en la generación de residuos',
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                Image.asset('assets/vision.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
