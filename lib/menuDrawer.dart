import 'package:cookmenu/BotonesInicio';
//import 'package:cookmenu/desayuno';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() => runApp(menuDrawer());

class menuDrawer extends StatelessWidget {
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
            title:  Text("Hola"),
           
          ),
          drawer: MenuLateral(),
          body: Card(
            // child: Text("HOMEeeee"),
            //
            child: Center(
                //alignment: Alignment.center,
          //Text("Selecciona el tema de receta"),
                child: GridView.count(
              //margin: E
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,dgeInsets.fromLTRB(left, top, right, bottom)
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //Text("Curso en CodeIgniter"),

                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Desayuno"),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Comida"),
                  color: Colors.pink[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Cena"),
                  color: Colors.green[100],

                ),
                Container(
                  padding:  const EdgeInsets.all(8),
                  child: const Text("Bebidas"),
                  color: Colors.orange[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("Postres"),
                  color: Colors.blue[100],
                ),
               
              ],
            )),
          ),
        ));
  }

}

class MenuLateral extends StatelessWidget {
   TextEditingController nameController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    var user = nameController;
    var user2 =  "Claudia";
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            //: Text("Bienvenido"),

            accountName: Text('Hola $user2'),
            // title: Text("Hola:$(nameController.toString())"),
           //title:  Text("Hola $user"),
           //var user_nameContrtoller

      //        title: Text('${widget.destination.title} Text'),
      //  backgroundColor: widget.destination.color,
            //leading: const Icon(Icons.menu).
            accountEmail: Text("informes@gmail.com"),
            decoration: BoxDecoration(
        //image: DecorationImage(
           color: Colors.blue,
          //image: AssetImage(
           //   'images/fondo.png'),
         // fit: BoxFit.fill,
        //),
      //  shape: BoxShape.circle,
      ),
           // decoration: BoxDecoration(
          //// color: Colors.blue,
          //),
          ),
          Ink(
            color: Colors.green[300],
            child: new ListTile(
              leading: const Icon(Icons.person, color:Colors.blue),
              title: Text(
                "Perfil",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Divider(color: Colors.green),
          new ListTile(
            dense:true,
            focusColor:  Colors.yellow,
            title: const Text("Inicio",
            //style: styleDrawer,
            ),
            leading:  Icon(Icons.home, color:Colors.blue),
            
            onTap: () {
              print("Hola");
            },
            onLongPress: () {
              print('longPress');
            },
          ),
         
       
        
          new ListTile(
            title: Text("Configuraciones"),
            leading: Icon(Icons.settings, color: Colors.blue),
          ),
        
          new ListTile(
            title: Text("Perfil"),
            leading: Icon(Icons.person,color:  Colors.blue),
          ),
         
          new ListTile(
            title: Text("Salir"),
            leading: Icon(Icons.west, color:  Colors.blue),
          ),
        ],
      ),
    );
  }
}