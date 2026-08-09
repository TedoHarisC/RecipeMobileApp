import 'package:drift/drift.dart';

class CategoryItems extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get thumbnailUrl => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
