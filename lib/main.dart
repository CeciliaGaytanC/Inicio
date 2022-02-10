import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'Registro.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:cookmenu/Registro';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 static const String _title = 'CookApp';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
       home: Scaffold(
         backgroundColor: Colors.white,
        appBar: AppBar(title: const Text(_title)),
       body:  const MyHomePage(),
      ),
     // home: Container(
//decoration:BoxDecoration(
//image: DecorationImage(
//image:AssetImage (assets/fondo.jpg),
//fit:BoxFit.cover
//),
//),


      //theme: ThemeData(

       // primarySwatch: Colors.blue,
     // ),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

 

  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
 TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 final _formKey = GlobalKey<FormState>();
  //GlobalKey _formKey  = new GlobalKey<FormState>();
 


  @override
  Widget build(BuildContext context) {
  return Form(
     key: _formKey,
       // padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(46),
                child: const Text(
                  'CookApp',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Inicia Sesion',
                  style: TextStyle(fontSize: 20),
                )),
            Padding (
              // key: _formKey,
              padding: const EdgeInsets.all(10),
              child: TextFormField(
               validator: (value){
                  if (value!.isEmpty){
                    return 'Por favor, Ingresa el nombre de usuario';
              }
              return null;
            },
                 style: TextStyle(color: Colors.black),
                controller: nameController,
                decoration: const InputDecoration(
                 // border: OutlineInputBorder(),
                //  labelText: 'Nombre de Usuario',
                  hintText: "Ingrese su Nombre",
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                    
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                  validator: (value){
                  if (value!.isEmpty){
                    return 'Por favor, Ingresa tu contraseña';
              }
              return null;
            },
                style: TextStyle(color: Colors.black),
                obscureText: true,
                controller: passwordController,
                 decoration: const InputDecoration(
                  //border: OutlineInputBorder(),
                  //labelText: 'Contraseña',
                   hintText: "Ingrese su Contraseña",
                  prefixIcon:  Icon(
                    Icons.lock,
                    color: Colors.blue,
                    
                  ),
                  
                ),
                  keyboardType: TextInputType.number,
              ),
            ),
            TextButton(

                onPressed: () {
             
              },
              child: const Text('Olvidaste tu contraseña',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Iniciar Sesion'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                     if (_formKey.currentState!.validate()) {
                 // Si el formulario es válido, queremos mostrar un Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Por favor, Ingresa los datos. Hay campos vacios')));
                }
       

                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Aun no tienes cuenta?'),
                TextButton(
                  child: const Text(
                    'Registrate',
                    style: TextStyle(fontSize: 20),
                  ),
                       onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Registro();
              }),
            );
          }
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
        

        
  }
}
