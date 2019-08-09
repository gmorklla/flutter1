import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'package:app1/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _webView();
  }

  Widget _tutorial() {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista());
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _crearItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final wTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(
          Icons.ac_unit,
          color: Colors.blueGrey,
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueGrey),
        onTap: () {},
      );
      opciones..add(wTemp)..add(Divider());
    });
    return opciones;
  }

  Widget _webView() {
    return Scaffold(
      body: new WebviewScaffold(
        url: 'http://15.156.207.212:4200/layout/design/702/window/1061/mov',
        withZoom: false,
        withLocalStorage: true,
        withJavascript: true,
        withLocalUrl: true,
        hidden: true,
        initialChild: Container(
          color: Colors.grey[300],
          child: const Center(
            child: Text('Waiting.....'),
          ),
        ),
      ),
    );
  }
}
