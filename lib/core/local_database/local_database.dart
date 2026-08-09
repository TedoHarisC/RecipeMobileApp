import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recipe_app/core/local_database/table/category_items.dart';
import 'package:recipe_app/core/local_database/table/recipe_items.dart';

part 'local_database.g.dart';

@DriftDatabase(tables: [CategoryItems, RecipeItems])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase([QueryExecutor? executor])
    : super(executor ?? openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor openConnection() {
    return driftDatabase(
      name: 'mydatabase',
      native: const DriftNativeOptions(
        databaseDirectory:
            getApplicationSupportDirectory, // Use default directory
      ),
    );
  }
}
