import 'package:flutter/material.dart';

class FormTask extends StatelessWidget {
  const FormTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      body: Column(children: [
    TextField()
      ],),
    );
  }
}
