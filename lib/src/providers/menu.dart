import 'package:flutter/services.dart' show rootBundle;

class _Menu {
  List<dynamic> opciones = [];

  _Menu() {
    cargarData();
  }

  cargarData() {
    rootBundle.loadString('data/menu.json').then((data) {
      print(data);
    });
  }
}

final menu = new _Menu();
