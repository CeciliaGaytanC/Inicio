import 'package:cookmenu/BotonesInicio';
import 'package:cookmenu/desayuno.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'desayuno.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
home: Scaffold(
          appBar: AppBar(
            title: Text("Selecciona el tema de recetas"),
          ),
          drawer: MenuLateral(),

      body: Container(
        
        //width: double.infinity,
       // color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [_boton1("Desayuno"), _boton2("Comida")],
                ),
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    _boton3("Cena       "),
                    _boton4("Bebidas"),
                  ],
                ),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _boton5("Postres"),
                    _boton6("Otros   "),
                  ],
                )
               
           // const Text('Hola mundo'),
            //_boton1("PáginaPrincipal"),
          ],
        ),
      ),
)

    );
  }

  Widget _boton1(String texto) {
    return MaterialButton(
      child: Text(
        texto,
        style: const TextStyle(color: Colors.black),
      ),
      color: Colors.orange[100],
      elevation: 1,
      padding: const EdgeInsets.all(60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => Desayuno()),
        );
      },
    );
  }

  Widget _boton2(String texto) {
    return MaterialButton(
      child: Text(
        texto,
        style: const TextStyle(color: Colors.black),
      ),
      color: Colors.blue[100],
      elevation: 1,
      padding: const EdgeInsets.all(60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => Desayuno()),
        );
      },
    );
  }

   Widget _boton3(String texto) {
    return MaterialButton(
      child: Text(
        texto,
        style: const TextStyle(color: Colors.black),
      ),
      color: Colors.pink[100],
      elevation: 1,
      padding: const EdgeInsets.all(60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => Desayuno()),
        );
      },
    );
  }

   Widget _boton4(String texto) {
    return MaterialButton(
      child: Text(
        texto,
        style: const TextStyle(color: Colors.black),
      ),
      color: Colors.green[100],
      elevation: 1,
      padding: const EdgeInsets.all(60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => Desayuno()),
        );
      },
    );
  }

   Widget _boton5(String texto) {
    return MaterialButton(
      child: Text(
        texto,
        style: const TextStyle(color: Colors.black),
      ),
      color: Colors.yellow[100],
      elevation: 1,
      padding: const EdgeInsets.all(60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => Desayuno()),
        );
      },
    );
  }

   Widget _boton6(String texto) {
    return MaterialButton(
      child: Text(
        texto,
        style: const TextStyle(color: Colors.black),
      ),
      color: Colors.purple[100],
      elevation: 1,
      padding: const EdgeInsets.all(60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => Desayuno()),
        );
      },
    );
  }

 
}