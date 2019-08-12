import 'package:flutter/material.dart';

class CountPage extends StatefulWidget{
  @override
  createState() => _CountPageState();
}

class _CountPageState extends State<CountPage>{

  final _estiloTexto = new TextStyle(fontSize: 20);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi primer App en Flutter'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks: ', style: _estiloTexto),
            Text('$_count', style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _createButtons()
    );
  }

  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 5),
        FloatingActionButton( child: Icon(Icons.restore), onPressed: _restart),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _remove),
        SizedBox(width: 5),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _add)
      ],
    );  
  }

  void _add(){
    setState(() => _count++ );
  }

  void _remove(){
    setState(() => _count-- );
  }

  void _restart(){
    setState(() => _count = 0 );
  }
}