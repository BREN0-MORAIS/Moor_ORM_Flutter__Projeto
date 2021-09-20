import 'package:flutter/material.dart';
import 'package:mobx_database/data/task_dao.dart';

import 'data/moor_database.dart';

class Lista extends StatelessWidget {
   TaskDao db = TaskDao();
  @override
  Widget build(BuildContext context) {
    return Container(child: FutureBuilder<List<Task>>(
          future: db.getAllTasks(),
          builder: (BuildContext context, AsyncSnapshot<List<Task>> snapshot) {
            if (snapshot.hasData) {
              return Container(
                child: ListView.builder(
                  itemCount: snapshot.requireData.length,
                  itemBuilder: (context, index) {
                    Task currentEntry = snapshot.requireData[index];
                    return ListTile(
                      title: Text('${currentEntry.name}'),
                    );
                  },
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),);
  }
}
