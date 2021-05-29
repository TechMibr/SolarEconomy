import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextButton(
              child: Image.network(
                'https://i.pinimg.com/originals/ff/81/fb/ff81fba05b3e32867d1fd7ed7316fdee.png',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://uploads.spiritfanfiction.com/fanfics/historias/201908/as-historias-mais-aleatorias-que-voce-vai-ler-17256500-140820191356.jpg',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://i.imgur.com/6amXGTM.jpg',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://i.imgur.com/0ooelxA.jpg',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Foto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(80),
            ),
            Container(
              child: Text(
                'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              margin: EdgeInsets.all(80),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
              backgroundColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
