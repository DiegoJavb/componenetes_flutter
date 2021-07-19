import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _listaNumeros = [0, 1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('listview'),
        ),
        body: _crearLista());
  }

  Widget _crearLista() {
    return ListView.builder(
      itemBuilder: (context, int index) {
        final imagen = _listaNumeros[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300?random=$imagen'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }
}
