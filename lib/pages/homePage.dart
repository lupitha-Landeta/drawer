import 'package:flutter/material.dart';
import 'package:navegacion/pages/Statefulpage.dart';
import 'package:navegacion/pages/StatelessPage.dart';
import 'package:navegacion/pages/paginaUno.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Cambiando entre Ventanas'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('ir a Pagina 1'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => PaginaUno()));
              },
            ),
            ListTile(
                title: Text('Ir a Practica Stateless Widget'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Clase1()));
                }),
            ListTile(
                title: Text('Ir a Practica StateFul Widget'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MiStateFull()));
                }),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cambiando entre paginas'),
      ),
      body: Container(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text('Ir a página 1'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => PaginaUno()));
                },
              ),
              FlatButton(
                color: Colors.amber,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text('Ir a Practica Stateless Widget'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Clase1()));
                },
              ),
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text('Ir a Practica Stateful Widget'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MiStateFull()));
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}
