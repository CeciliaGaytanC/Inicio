import 'package:cookmenu/BotonesInicio';
import 'package:cookmenu/desayuno.dart';
//import 'package:cookmenu/navegacion';
import 'package:flutter/material.dart';


import 'BotonInicio.dart';
import 'añadir.dart';
import 'desayuno.dart';

class BotonBarraNavegacion extends StatefulWidget {
  @override
  _BotonBarraNavegacionState createState() => _BotonBarraNavegacionState();
}

class _BotonBarraNavegacionState extends State<BotonBarraNavegacion> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    BotonInicio(),
    Favorito(),
    ProfilePage(),
    Add(),
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
              size: 30,
            ),
            title: Text('Inicio'),
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
              size: 30,
            ),
          ),
         
         BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 30,
            ),
            title: Text('Favoritos'),
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
           
            ),
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.new_label,
              color: Colors.blue,
              size: 30,
             ),
              title: Text('Añadir Receta'),
            activeIcon: Icon(
              Icons .new_label,
              color: Colors.red,
              size: 30,
            ),
            ),
               BottomNavigationBarItem(
            icon: Icon(
              Icons.add_a_photo,
              color: Colors.blue,
              size: 30,
             ),
              title: Text('Añadir '),
            activeIcon: Icon(
              Icons .add_a_photo,
              color: Colors.red,
              size: 30,
            ),
            )
            

         
          
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}

class Favorito extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => Desayuno()
            ));
          },
          child: Text('Hola'),
          color: Colors.white,
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
    );
  }
 }
