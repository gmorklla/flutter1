import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTxt = new TextStyle(fontSize: 20.0, color: Colors.blueGrey);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _crearAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de clicks:',
                style: _estiloTxt,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('$_conteo', style: _estiloTxt)
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearAppBar() {
    return AppBar(
      title: Text('Título'),
      centerTitle: true,
      backgroundColor: Colors.teal,
      elevation: 10.0,
    );
  }

  Widget _crearBotones() {
    final Color _btnColor = Colors.teal;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          backgroundColor: _btnColor,
          child: Icon(Icons.exposure_zero),
          onPressed: () {},
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          backgroundColor: _btnColor,
          child: Icon(Icons.remove),
          onPressed: () {},
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          backgroundColor: _btnColor,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    );
  }
}
