import 'package:mobx/mobx.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

// @DataClassName('Some')
class Tasks extends Table {
  IntColumn get id => integer().nullable().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  DateTimeColumn get dueData => dateTime().nullable()();
  BoolColumn get completed => boolean().withDefault(Constant(false))();
}

@UseMoor(tables: [Tasks])
class AppDatabase extends _$AppDatabase {
  AppDatabase(): super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements:true ));

      @override
      int get schemaVersion => 1;

}

