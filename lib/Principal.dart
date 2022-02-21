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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,dgeInsets.fromLTRB(left, top, right, bottom)
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Text("Curso en CodeIgniter"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _boton("Desayuno"),
                   _boton("Comida")],
                ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _boton("Cena"),
                _boton("Postres")
              ],
            ),
              
              
                MaterialButton(
                  padding: const EdgeInsets.all(46),
                  //margin: EdgeInsets.all(30),
                  // alignment: Alignment.center,
                  minWidth: 200.0,

                  height: 80.0,
                  onPressed: () {},
                  color: Colors.lightBlue,
                  child:
                      Text('Desayuno', style: TextStyle(color: Colors.white)),
                ),
              ],
            )),
          ),
        ));
  }
}
 Widget _boton(String texto) {
  return RaisedButton( 
      child:Text(texto, style: TextStyle(color: Colors.black),),
      color: Colors.teal[100],
      elevation: 5,
      padding: EdgeInsets.all(50),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.teal),
      ),
      onPressed: ()=>{
        // use pageroute para lanzar a otra ventana
        print("BOTON: " +texto)
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
