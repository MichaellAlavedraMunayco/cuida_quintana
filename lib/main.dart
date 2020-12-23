import 'package:cuida_quintana/activities/home.dart';
import 'package:cuida_quintana/activities/intranet/add.comment.dart';
import 'package:cuida_quintana/activities/intranet/intranet.dart';
import 'package:cuida_quintana/activities/login.dart';
import 'package:cuida_quintana/activities/mission.vision.dart';
import 'package:cuida_quintana/activities/recycling.methods.dart';
import 'package:cuida_quintana/activities/sign.up.dart';
import 'package:cuida_quintana/models/menu.item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CuidaQuintana',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Home(title: 'CuidaQuintana', menuItemList: [
                new MenuItem(
                    icon: Icons.book,
                    title: 'Misión y visión',
                    subtitle: 'Propósitos de la aplicación',
                    activity: 'mission_vision'),
                new MenuItem(
                    icon: Icons.info,
                    title: 'Métodos de reciclaje',
                    subtitle: 'Información sobre métodos de reciclaje',
                    activity: 'recycling_methods'),
                new MenuItem(
                    icon: Icons.account_circle,
                    title: 'Iniciar sesión',
                    subtitle: 'Ingresar a tu cuenta de usuario',
                    activity: 'login'),
              ]),
          '/mission_vision': (context) => MissionVision(title: 'CuidaQuintana'),
          '/recycling_methods': (context) =>
              RecyclingMethods(title: 'Métodos de Reciclaje'),
          '/login': (context) => Login(title: 'Inicio de Sesión'),
          '/sign/up': (context) => SignUp(title: 'Registro de Usuarios'),
          '/intranet': (context) => Intranet(title: 'CuidaQuintana'),
          '/add/comment': (context) => AddComment(),
        });
  }
}
