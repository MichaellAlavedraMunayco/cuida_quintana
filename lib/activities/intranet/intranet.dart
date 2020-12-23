import 'package:cuida_quintana/activities/intranet/recycling.list.dart';
import 'package:cuida_quintana/activities/intranet/register.recycling.dart';
import 'package:cuida_quintana/activities/intranet/social.dart';
import 'package:flutter/material.dart';

class Intranet extends StatefulWidget {
  Intranet({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _IntranetState createState() => _IntranetState();
}

class _IntranetState extends State<Intranet> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Social(),
    RegisterRecycling(),
    RecyclingList()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: 'Comunidad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue),
            label: 'Registro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historial',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        onTap: (value) {
          setState(() => _selectedIndex = value);
        },
      ),
    );
  }
}
