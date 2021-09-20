import 'package:mobx_database/data/moor_database.dart';

class TaskDao extends AppDatabase{
    Future<List<Task>> getAllTasks()=> select(tasks).get();
    Stream<List<Task>> watchAllTasks()=> select(tasks).watch();
    Future<int> insertTask(Task task) => into(tasks).insert(task);
    Future updateTask(Task task) => update(tasks).replace(task);
    Future deleteTask(Task task) => update(tasks).replace(task);
}





 