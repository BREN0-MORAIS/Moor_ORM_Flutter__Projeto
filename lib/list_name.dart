import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobx_database/data/task_dao.dart';

import 'data/moor_database.dart';
import 'lista.dart';

class ListName extends StatefulWidget {
  const ListName({ Key? key }) : super(key: key);

  @override
  _ListNameState createState() => _ListNameState();
}

class _ListNameState extends State<ListName> {
    TaskDao db = TaskDao();
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('MOOR'),
        actions: [
          IconButton(
              onPressed: () {
                Task task = Task(name: 'name $Random()', completed: true);
                        setState(() {
                          
                                        db.insertTask(task);
                        });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Lista() ,
    );
  }
}
