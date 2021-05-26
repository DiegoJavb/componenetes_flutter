import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'seis',
    'siete',
    'ocho',
    'nueve',
    'diez'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      // body: ListView(children: _crearItems()),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (var opcion in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opcion),
  //     );
  //     lista
  //       ..add(tempWidget)
  //       ..add(Divider(
  //         color: Colors.red,
  //       ));
  //   }
  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('algun texto'),
            leading: Icon(Icons.access_alarm_outlined),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            color: Colors.black87,
          )
        ],
      );
    }).toList();
    return widgets;
  }
}
