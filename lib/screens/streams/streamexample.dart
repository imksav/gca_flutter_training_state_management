import 'dart:async';

import 'package:flutter/material.dart';

class StreamExample extends StatelessWidget {
  final StreamController streamController = StreamController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Streams"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        _listenButton(),
        _addButton(),
      ],
    );
  }

  Widget _addButton() {
    String currentDateTime = DateTime.now().toString();
    return RaisedButton(
      onPressed: () {
        streamController.sink.add(currentDateTime);
      },
      child: Text("Add"),
    );
  }

  Widget _listenButton() {
    return RaisedButton(
      onPressed: () {
        streamController.stream.listen((event) {
          print(event);
        });
      },
      child: Text("Listen to changed"),
    );
  }
}
