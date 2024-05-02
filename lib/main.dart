import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pousada Chão de Minas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Text(
            'Pousada em Ouro Preto, MG',
            style: TextStyle(
              color: Colors.grey[600], 
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber, 
              ),
              const Padding(padding: EdgeInsets.only(right: 4)),
              const Text('5', style: TextStyle(color: Colors.amber)), 
            ],
          ),
        ],
      ),
    );

    Widget _buildButton(String label, IconData icon) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(icon),
            color: Colors.blueAccent,
            onPressed: () {
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton('Local', Icons.location_on),
        _buildButton('Contato', Icons.call),
        _buildButton('Compartilhar', Icons.share),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'a Pousada Chão de Minas é bem avaliada pelos hóspedes, ideal para quem quer ficar mais próximo da natureza com muito conforto – ela está distante quase 18 km das principais atrações de Ouro Preto. O casarão é inspirado nas construções das antigas fazendas da região e a gastronomia local é um dos destaques da pousada em Minas Gerais.',
        softWrap: true,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
    );

    return MaterialApp(
      title: 'Pousada',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pousada',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/Pousada.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
