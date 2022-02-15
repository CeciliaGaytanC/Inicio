import 'package:flutter/material.dart';


class Desayuno extends StatefulWidget {

 @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Desayuno> {
  TextEditingController _nameTextController = TextEditingController();

  bool _isLoading = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Desayuno'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 0.0, left: 0.0, right: 20.0),
              //child: actionIcon,
            ),

            
          ],
        ),
       
        
        );
  }

}
