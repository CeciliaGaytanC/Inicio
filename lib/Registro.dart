import 'package:flutter/material.dart';


class Registro extends StatefulWidget {

 @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  TextEditingController _nameTextController = TextEditingController();

  bool _isLoading = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registro'),
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

  _saveDataToServer() {
  }
}
