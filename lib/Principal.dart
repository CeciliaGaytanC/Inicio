import 'package:flutter/material.dart';


class Principal extends StatefulWidget {

 @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  TextEditingController _nameTextController = TextEditingController();

  bool _isLoading = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Principal'),
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


