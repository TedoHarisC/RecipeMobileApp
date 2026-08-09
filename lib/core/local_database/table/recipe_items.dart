import 'package:drift/drift.dart';

class RecipeItems extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get category => text().nullable()();
  TextColumn get area => text().nullable()();
  TextColumn get instruction => text().nullable()();
  TextColumn get thumbnailUrl => text().nullable()();
  TextColumn get youtubeUrl => text().nullable()();
  TextColumn get ingredientsJson => text().nullable()();
  TextColumn get tagsJson => text().nullable()();
  BoolColumn get isSaved => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
