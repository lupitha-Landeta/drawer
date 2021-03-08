import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Clase1(),
  ));
}

class Clase1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staless Widget"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            MyCard(
              title: Text(
                'Amo Flutter.',
                style: TextStyle(color: Colors.black, fontSize: 30.0),
              ),
              icon: Icon(Icons.favorite, size: 40.0, color: Colors.red),
            ),
            MyCard(
              title: Text(
                'Me gusta Flutter.',
                style: TextStyle(color: Colors.black, fontSize: 30.0),
              ),
              icon: Icon(Icons.thumb_up, size: 40.0, color: Colors.blue),
            ),
            MyCard(
              title: Text(
                'Me divierte Flutter.',
                style: TextStyle(color: Colors.black, fontSize: 30.0),
              ),
              icon: Icon(Icons.sentiment_very_satisfied_rounded,
                  size: 40.0, color: Colors.yellow),
            ),
          ],
        ),
      )),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  //Constructor
  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[this.title, this.icon],
        ),
      ),
    );
  }
}
