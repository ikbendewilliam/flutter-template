// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_template_database.dart';

// ignore_for_file: type=lint
class $DbTodoTableTable extends DbTodoTable
    with TableInfo<$DbTodoTableTable, DbTodo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbTodoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _completedMeta =
      const VerificationMeta('completed');
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
      'completed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("completed" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, title, completed];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_todo_table';
  @override
  VerificationContext validateIntegrity(Insertable<DbTodo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed']!, _completedMeta));
    } else if (isInserting) {
      context.missing(_completedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbTodo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbTodo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      completed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}completed'])!,
    );
  }

  @override
  $DbTodoTableTable createAlias(String alias) {
    return $DbTodoTableTable(attachedDatabase, alias);
  }
}

class DbTodo extends DataClass implements Insertable<DbTodo> {
  final int id;
  final String title;
  final bool completed;
  const DbTodo(
      {required this.id, required this.title, required this.completed});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['completed'] = Variable<bool>(completed);
    return map;
  }

  DbTodoTableCompanion toCompanion(bool nullToAbsent) {
    return DbTodoTableCompanion(
      id: Value(id),
      title: Value(title),
      completed: Value(completed),
    );
  }

  factory DbTodo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbTodo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  DbTodo copyWith({int? id, String? title, bool? completed}) => DbTodo(
        id: id ?? this.id,
        title: title ?? this.title,
        completed: completed ?? this.completed,
      );
  DbTodo copyWithCompanion(DbTodoTableCompanion data) {
    return DbTodo(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      completed: data.completed.present ? data.completed.value : this.completed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbTodo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, completed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbTodo &&
          other.id == this.id &&
          other.title == this.title &&
          other.completed == this.completed);
}

class DbTodoTableCompanion extends UpdateCompanion<DbTodo> {
  final Value<int> id;
  final Value<String> title;
  final Value<bool> completed;
  const DbTodoTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.completed = const Value.absent(),
  });
  DbTodoTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required bool completed,
  })  : title = Value(title),
        completed = Value(completed);
  static Insertable<DbTodo> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<bool>? completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (completed != null) 'completed': completed,
    });
  }

  DbTodoTableCompanion copyWith(
      {Value<int>? id, Value<String>? title, Value<bool>? completed}) {
    return DbTodoTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbTodoTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

abstract class _$FlutterTemplateDatabase extends GeneratedDatabase {
  _$FlutterTemplateDatabase(QueryExecutor e) : super(e);
  $FlutterTemplateDatabaseManager get managers =>
      $FlutterTemplateDatabaseManager(this);
  late final $DbTodoTableTable dbTodoTable = $DbTodoTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dbTodoTable];
}

typedef $$DbTodoTableTableCreateCompanionBuilder = DbTodoTableCompanion
    Function({
  Value<int> id,
  required String title,
  required bool completed,
});
typedef $$DbTodoTableTableUpdateCompanionBuilder = DbTodoTableCompanion
    Function({
  Value<int> id,
  Value<String> title,
  Value<bool> completed,
});

class $$DbTodoTableTableFilterComposer
    extends Composer<_$FlutterTemplateDatabase, $DbTodoTableTable> {
  $$DbTodoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get completed => $composableBuilder(
      column: $table.completed, builder: (column) => ColumnFilters(column));
}

class $$DbTodoTableTableOrderingComposer
    extends Composer<_$FlutterTemplateDatabase, $DbTodoTableTable> {
  $$DbTodoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get completed => $composableBuilder(
      column: $table.completed, builder: (column) => ColumnOrderings(column));
}

class $$DbTodoTableTableAnnotationComposer
    extends Composer<_$FlutterTemplateDatabase, $DbTodoTableTable> {
  $$DbTodoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);
}

class $$DbTodoTableTableTableManager extends RootTableManager<
    _$FlutterTemplateDatabase,
    $DbTodoTableTable,
    DbTodo,
    $$DbTodoTableTableFilterComposer,
    $$DbTodoTableTableOrderingComposer,
    $$DbTodoTableTableAnnotationComposer,
    $$DbTodoTableTableCreateCompanionBuilder,
    $$DbTodoTableTableUpdateCompanionBuilder,
    (
      DbTodo,
      BaseReferences<_$FlutterTemplateDatabase, $DbTodoTableTable, DbTodo>
    ),
    DbTodo,
    PrefetchHooks Function()> {
  $$DbTodoTableTableTableManager(
      _$FlutterTemplateDatabase db, $DbTodoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbTodoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbTodoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbTodoTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<bool> completed = const Value.absent(),
          }) =>
              DbTodoTableCompanion(
            id: id,
            title: title,
            completed: completed,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required bool completed,
          }) =>
              DbTodoTableCompanion.insert(
            id: id,
            title: title,
            completed: completed,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DbTodoTableTableProcessedTableManager = ProcessedTableManager<
    _$FlutterTemplateDatabase,
    $DbTodoTableTable,
    DbTodo,
    $$DbTodoTableTableFilterComposer,
    $$DbTodoTableTableOrderingComposer,
    $$DbTodoTableTableAnnotationComposer,
    $$DbTodoTableTableCreateCompanionBuilder,
    $$DbTodoTableTableUpdateCompanionBuilder,
    (
      DbTodo,
      BaseReferences<_$FlutterTemplateDatabase, $DbTodoTableTable, DbTodo>
    ),
    DbTodo,
    PrefetchHooks Function()>;

class $FlutterTemplateDatabaseManager {
  final _$FlutterTemplateDatabase _db;
  $FlutterTemplateDatabaseManager(this._db);
  $$DbTodoTableTableTableManager get dbTodoTable =>
      $$DbTodoTableTableTableManager(_db, _db.dbTodoTable);
}
