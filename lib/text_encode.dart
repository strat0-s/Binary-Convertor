import 'dart:core';

import 'package:flutter/material.dart';

class textEncode extends StatefulWidget {
  const textEncode({super.key});

  @override
  State<textEncode> createState() => _textEncodeState();
}

class _textEncodeState extends State<textEncode> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  String currentText = '';

  void refreshText() {
    setState(() {
      currentText = myController.text.runes
          .map((int c) => c.toRadixString(2).padLeft(8, '0'))
          .join(" ");
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Encoder'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: myController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Sentence',
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Text('Encoded Text: '),
          const Padding(padding: EdgeInsets.all(10)),
          SelectableText(currentText),
          const Padding(padding: EdgeInsets.all(10)),
          FloatingActionButton(
            onPressed: refreshText,
            child: const Text('Encode'),
          )
        ],
      )),
    );
  }
}
