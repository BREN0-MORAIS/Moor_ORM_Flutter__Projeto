
import 'package:mobx_database/data/moor_database.dart';
import 'package:mobx_database/data/task_dao.dart';

abstract class TasksProvider {
  
  TaskDao dao = TaskDao();
  
   Future<List<Task>> get loadProviderTask => dao.getAllTasks();



}
