import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Projeto N1',
      home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
        backgroundColor: Colors.black26,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children:<Widget> [ 
          Center(
            child: Padding(padding: EdgeInsets.all(20),
              child: Image.asset("imagem/navedecolando.jpg"),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: Text("Vamos embarcar nessa viagem!!!\n Escolha um meio de transporte",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),

            ),
          ),
            Padding(padding: EdgeInsets.all(20) ,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  Image.asset("imagem/ufo.png"),
                  Image.asset("imagem/spaceship.png"),
                  Image.asset("imagem/nave.png"),
                ],
              ),
            ),

          ElevatedButton(
            child: Text('Acessar tela 2'),
                   onPressed: () {
                   Navigator.push(
                   context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
        ],
      ),
    );
  }
} // FIM PRIMEIRA TELA

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
        backgroundColor: Colors.black26,
      ),
      body: ListView(
        children: <Widget> [
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Mapa'),
            ),
             ListTile(
               leading: Icon(Icons.photo_album_rounded),
               title: Text('Álbum'),
             ),
             ListTile(
               leading: Icon(Icons.phone),
               title: Text('Fone'),
             ),
             ListTile(
               leading: Icon(Icons.accessible),
               title: Text('Acessibilidade'),
             ),
             ListTile(
               leading: Icon(Icons.pin_drop),
               title: Text('Localização'),
             ),
             Divider(),
             Image.asset('imagem/navevoando.jpg'),
          Padding(padding: EdgeInsets.only(top: 150),
            child: ElevatedButton(
               child: Text('Acessar tela 3'),
                 onPressed: () {
                   Navigator.push(
                     context,
                      MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },
              ),
            ),
          ],
        ),
      );
  }
} // FIM SEGUNDA TELA

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terceira tela"),
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: <Widget> [
            Center(
              child: Padding(padding: EdgeInsets.all(20),
                child: Image.asset("imagem/astronauta.jpg"),
             ),
            ),
          Padding(padding: EdgeInsets.all(20),
            child: Text("Chegamos ao destino!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),

            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              child: Text('Voltar para tela 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstRoute()),
                );
              },
            ),
          ),
        ]
      ),
    );
  }
} // FIM TERCEIRA TELA