part of 'package:market_place/db/app_database.dart';

@DataClassName('MealSqlModel')
class Meals extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  TextColumn get thumbnail => text()();

  TextColumn get instructions => text().nullable()();

  TextColumn get category => text().nullable()();

  TextColumn get area => text().nullable()();

  TextColumn get tags => text().nullable()();

  TextColumn get youtube => text().nullable()();

  RealColumn get price => real()();

  IntColumn get count => integer().withDefault(const Constant(1))();

  @override
  Set<Column> get primaryKey => {id};
}
