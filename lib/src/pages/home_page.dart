import 'package:flutter/material.dart';

import 'package:app1/src/providers/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista());
  }

  Widget _lista() {
    print(menu.opciones);
    return ListView(
      children: _crearItems(),
    );
  }

  List<Widget> _crearItems() {
    return [
      ListTile(
        title: Text('Hola mundo'),
      )
    ];
  }
}
