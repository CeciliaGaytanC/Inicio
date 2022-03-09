
import 'package:cookmenu/BotonesInicio';
import 'package:cookmenu/desayuno.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'desayuno.dart';
import 'navegacion.dart';

class DestinationView extends StatefulWidget {
  const DestinationView({ Key? key, required this.destination }) : super(key: key);

  final Destination destination;

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: 'sample text: ${widget.destination.title}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.destination.title} Text'),
        backgroundColor: widget.destination.color,
      ),
      backgroundColor: widget.destination.color[100],
      body: Container(
        padding: const EdgeInsets.all(32.0),
        alignment: Alignment.center,
        child: TextField(controller: _textController),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}