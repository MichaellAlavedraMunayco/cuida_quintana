import 'package:flutter/material.dart';

class RecyclingMethods extends StatefulWidget {
  RecyclingMethods({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RecyclingMethodsState createState() => _RecyclingMethodsState();
}

class _RecyclingMethodsState extends State<RecyclingMethods> {
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
                ListTile(title: const Text('Usar focos ahorrativos')),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Usan menos energía, lo que consumirá menos electricidad y pagarás menos en el recibo mensual',
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                Image.asset('assets/spotlight.jpg'),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(title: const Text('Reciclar baterías y pilas')),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Almacenar baterías y pilas defectuosas o que ya no usen, pues los metales que contienen son reutilizables',
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                Image.asset('assets/batteries.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
