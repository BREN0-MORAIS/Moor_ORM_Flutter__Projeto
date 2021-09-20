// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskMobx on _TaskMobx, Store {
  final _$listaskAtom = Atom(name: '_TaskMobx.listask');

  @override
  ObservableFuture<List<AppDatabase>> get listask {
    _$listaskAtom.reportRead();
    return super.listask;
  }

  @override
  set listask(ObservableFuture<List<AppDatabase>> value) {
    _$listaskAtom.reportWrite(value, super.listask, () {
      super.listask = value;
    });
  }

  final _$insertAsyncAction = AsyncAction('_TaskMobx.insert');

  @override
  Future insert() {
    return _$insertAsyncAction.run(() => super.insert());
  }

  @override
  String toString() {
    return '''
listask: ${listask}
    ''';
  }
}
