import 'package:cookmenu/BotonesInicio';
import 'package:cookmenu/desayuno.dart';
import 'package:flutter/material.dart';

void main() => runApp(Principal());

class Principal extends StatelessWidget {
  // This widget is the root of your application.
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
            title: Text("Selecciona el tema de receta"),
          ),
          drawer: MenuLateral(),
          body: Card(
            // child: Text("HOMEeeee"),
            //
            child: Center(
                //alignment: Alignment.center,
                //Text("Selecciona el tema de receta"),
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,

              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,dgeInsets.fromLTRB(left, top, right, bottom)
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Text("Curso en CodeIgniter"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [_boton1("Desayuno"), _boton2("Comida")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    _boton3("Cena     "),
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
              ],
            )),
          ),
        ));
  }
}

Widget _boton1(String texto) {
  return MaterialButton(
    child: Text(
      texto,
      style: TextStyle(color: Colors.black),
    ),
 color: Colors.orange[100],
    elevation: 1,
    padding: EdgeInsets.all(60),
    shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(5.0),
    side: BorderSide(color: Colors.black),
  ),
  onPressed: () {
 
}
      
  );
}

Widget _boton2(String texto) {
  return MaterialButton(
    child: Text(
      texto,
      style: TextStyle(color: Colors.black),
    ),
    color: Colors.teal[100],
    elevation: 1,
    padding: EdgeInsets.all(60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
      side: BorderSide(color: Colors.black),
    ),
    onPressed: () => {
      // use pageroute para lanzar a otra ventana
      print("BOTON: " + texto)
    },
  );
}

Widget _boton3(String texto) {
  return MaterialButton(
    child: Text(
      texto,
      style: TextStyle(color: Colors.black),
    ),
    color: Colors.purple[100],
    elevation: 1,
    padding: EdgeInsets.all(60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
      side: BorderSide(color: Colors.black),
    ),
    onPressed: () => {
      // use pageroute para lanzar a otra ventana
      print("BOTON: " + texto)
    },
  );
}

Widget _boton4(String texto) {
  return MaterialButton(
    child: Text(
      texto,
      style: TextStyle(color: Colors.black),
    ),
    color: Colors.yellow[100],
    elevation: 1,
    padding: EdgeInsets.all(60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
      side: BorderSide(color: Colors.black),
    ),
    onPressed: () => {
      // use pageroute para lanzar a otra ventana
      print("BOTON: " + texto)
    },
  );
}

Widget _boton5(String texto) {
  return MaterialButton(
    child: Text(
      texto,
      style: TextStyle(color: Colors.black),
    ),
    color: Colors.pink[100],
    elevation: 1,
    padding: EdgeInsets.all(60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
      side: BorderSide(color: Colors.black),
    ),
    onPressed: () => {
      // use pageroute para lanzar a otra ventana
      print("BOTON: " + texto)
    },
  );
}

Widget _boton6(String texto) {
  return MaterialButton(
    child: Text(
      texto,
      style: TextStyle(color: Colors.black),
    ),
    color: Colors.green[100],
    elevation: 1,
    padding: EdgeInsets.all(60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
      side: BorderSide(color: Colors.black),
    ),
    onPressed: () => {
      // use pageroute para lanzar a otra ventana
      print("BOTON: " + texto)
    },
  );
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            //: Text("Bienvenido"),

            accountName: Text("CODEA APP"),
            //leading: const Icon(Icons.menu).
            accountEmail: Text("informes@gmail.com"),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Ink(
            color: Colors.green[300],
            child: new ListTile(
              leading: const Icon(Icons.local_cafe),
              title: Text(
                "Desayuno",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          new ListTile(
            title: Text("Comida"),
            //  color: Colors.green[300],

            leading: const Icon(Icons.lunch_dining),
            onTap: () {
              print("Hola");
            },
            onLongPress: () {
              print('longPress');
            },
          ),
          new ListTile(
            title: Text("Cena"),
            leading: Icon(Icons.set_meal),
          ),
          new ListTile(
            title: Text("Postres"),
            leading: Icon(Icons.icecream),
          ),
          new ListTile(
            title: Text("Configuraciones"),
            leading: Icon(Icons.settings),
          ),
          new ListTile(
            title: Text("Perfil"),
            leading: Icon(Icons.person),
          ),
          new ListTile(
            title: Text("Salir"),
            leading: Icon(Icons.west),
          ),
        ],
      ),
    );
  }
}
