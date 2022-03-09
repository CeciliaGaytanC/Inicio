import 'package:cookmenu/BotonesInicio';
import 'package:cookmenu/VistaDestino.dart';
import 'package:cookmenu/desayuno.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'desayuno.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allDestinations.map<Widget>((Destination destination) {
            return DestinationView(destination: destination);
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            backgroundColor: destination.color,
            title: Text(destination.title)
          );
        }).toList(),
      ),
    );
  }
}

class Destination {
   const Destination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Inicio', Icons.home, Colors.pink),
  Destination('Desayuno', Icons.business, Colors.cyan),
  Destination('Añadir', Icons.new_label, Colors.purple),
  Destination('Favoritos', Icons.favorite, Colors.blue)
];

