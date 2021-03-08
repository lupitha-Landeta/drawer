import 'package:flutter/material.dart';

class PaginaUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Uno'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Text('Soy la pagina 1'),
        ),
      ),
    );
  }
}
