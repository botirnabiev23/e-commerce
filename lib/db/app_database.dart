import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'package:market_place/db/tables/meals_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Meals,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  Future<void> deleteDatabase() async {
    await close();
    final dbDirectory = await getApplicationDocumentsDirectory();
    final dbPath = path.join(
      dbDirectory.path,
      'e-commerce.sqlite',
    );
    final file = File(dbPath);
    final exists = await file.exists();
    if (exists) {
      await file.delete();
    }
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(
      p.join(
        dbFolder.path,
        'e-commerce.sqlite',
      ),
    );
    return NativeDatabase(file);
  });
}
