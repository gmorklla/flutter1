import 'package:flutter/material.dart';

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
