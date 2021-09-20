// // Include generated file
// import 'dart:math';

// import 'package:mobx/mobx.dart';
// import 'package:mobx_database/data/task_dao.dart';

// import '../moor_database.dart';

// part 'task_mobx.g.dart';
//   TaskDao db = TaskDao();
// // This is the class used by rest of your codebase
// class TaskMobx = _TaskMobx with _$TaskMobx;

// // The store-class
// abstract class _TaskMobx with Store {

// @observable
//   ObservableList<Task> listTask = ObservableList.of([]);


//   @action
//  Future<void> insert () async{
//        await db.getAllTasks().then((value) => {
//           listTask = ObservableList.of(value)
//        });

//   }


// }
