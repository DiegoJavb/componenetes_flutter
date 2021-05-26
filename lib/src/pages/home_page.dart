import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/providers/menu_provider.dart';
import 'package:componentes_flutter/src/utils/icons_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _ListaItems(snapshot.data, context),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  List<Widget> _ListaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });

          // Navigator.push(context, route);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
