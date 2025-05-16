// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MealsTable extends Meals with TableInfo<$MealsTable, MealSqlModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MealsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _thumbnailMeta =
      const VerificationMeta('thumbnail');
  @override
  late final GeneratedColumn<String> thumbnail = GeneratedColumn<String>(
      'thumbnail', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _instructionsMeta =
      const VerificationMeta('instructions');
  @override
  late final GeneratedColumn<String> instructions = GeneratedColumn<String>(
      'instructions', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
      'area', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _youtubeMeta =
      const VerificationMeta('youtube');
  @override
  late final GeneratedColumn<String> youtube = GeneratedColumn<String>(
      'youtube', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _countMeta = const VerificationMeta('count');
  @override
  late final GeneratedColumn<int> count = GeneratedColumn<int>(
      'count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        thumbnail,
        instructions,
        category,
        area,
        tags,
        youtube,
        price,
        count
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'meals';
  @override
  VerificationContext validateIntegrity(Insertable<MealSqlModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta,
          thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta));
    } else if (isInserting) {
      context.missing(_thumbnailMeta);
    }
    if (data.containsKey('instructions')) {
      context.handle(
          _instructionsMeta,
          instructions.isAcceptableOrUnknown(
              data['instructions']!, _instructionsMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
    }
    if (data.containsKey('youtube')) {
      context.handle(_youtubeMeta,
          youtube.isAcceptableOrUnknown(data['youtube']!, _youtubeMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('count')) {
      context.handle(
          _countMeta, count.isAcceptableOrUnknown(data['count']!, _countMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MealSqlModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MealSqlModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      thumbnail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thumbnail'])!,
      instructions: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}instructions']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}area']),
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags']),
      youtube: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}youtube']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      count: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}count'])!,
    );
  }

  @override
  $MealsTable createAlias(String alias) {
    return $MealsTable(attachedDatabase, alias);
  }
}

class MealSqlModel extends DataClass implements Insertable<MealSqlModel> {
  final String id;
  final String name;
  final String thumbnail;
  final String? instructions;
  final String? category;
  final String? area;
  final String? tags;
  final String? youtube;
  final double price;
  final int count;
  const MealSqlModel(
      {required this.id,
      required this.name,
      required this.thumbnail,
      this.instructions,
      this.category,
      this.area,
      this.tags,
      this.youtube,
      required this.price,
      required this.count});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['thumbnail'] = Variable<String>(thumbnail);
    if (!nullToAbsent || instructions != null) {
      map['instructions'] = Variable<String>(instructions);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || area != null) {
      map['area'] = Variable<String>(area);
    }
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(tags);
    }
    if (!nullToAbsent || youtube != null) {
      map['youtube'] = Variable<String>(youtube);
    }
    map['price'] = Variable<double>(price);
    map['count'] = Variable<int>(count);
    return map;
  }

  MealsCompanion toCompanion(bool nullToAbsent) {
    return MealsCompanion(
      id: Value(id),
      name: Value(name),
      thumbnail: Value(thumbnail),
      instructions: instructions == null && nullToAbsent
          ? const Value.absent()
          : Value(instructions),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      area: area == null && nullToAbsent ? const Value.absent() : Value(area),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      youtube: youtube == null && nullToAbsent
          ? const Value.absent()
          : Value(youtube),
      price: Value(price),
      count: Value(count),
    );
  }

  factory MealSqlModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MealSqlModel(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      thumbnail: serializer.fromJson<String>(json['thumbnail']),
      instructions: serializer.fromJson<String?>(json['instructions']),
      category: serializer.fromJson<String?>(json['category']),
      area: serializer.fromJson<String?>(json['area']),
      tags: serializer.fromJson<String?>(json['tags']),
      youtube: serializer.fromJson<String?>(json['youtube']),
      price: serializer.fromJson<double>(json['price']),
      count: serializer.fromJson<int>(json['count']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'thumbnail': serializer.toJson<String>(thumbnail),
      'instructions': serializer.toJson<String?>(instructions),
      'category': serializer.toJson<String?>(category),
      'area': serializer.toJson<String?>(area),
      'tags': serializer.toJson<String?>(tags),
      'youtube': serializer.toJson<String?>(youtube),
      'price': serializer.toJson<double>(price),
      'count': serializer.toJson<int>(count),
    };
  }

  MealSqlModel copyWith(
          {String? id,
          String? name,
          String? thumbnail,
          Value<String?> instructions = const Value.absent(),
          Value<String?> category = const Value.absent(),
          Value<String?> area = const Value.absent(),
          Value<String?> tags = const Value.absent(),
          Value<String?> youtube = const Value.absent(),
          double? price,
          int? count}) =>
      MealSqlModel(
        id: id ?? this.id,
        name: name ?? this.name,
        thumbnail: thumbnail ?? this.thumbnail,
        instructions:
            instructions.present ? instructions.value : this.instructions,
        category: category.present ? category.value : this.category,
        area: area.present ? area.value : this.area,
        tags: tags.present ? tags.value : this.tags,
        youtube: youtube.present ? youtube.value : this.youtube,
        price: price ?? this.price,
        count: count ?? this.count,
      );
  MealSqlModel copyWithCompanion(MealsCompanion data) {
    return MealSqlModel(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      thumbnail: data.thumbnail.present ? data.thumbnail.value : this.thumbnail,
      instructions: data.instructions.present
          ? data.instructions.value
          : this.instructions,
      category: data.category.present ? data.category.value : this.category,
      area: data.area.present ? data.area.value : this.area,
      tags: data.tags.present ? data.tags.value : this.tags,
      youtube: data.youtube.present ? data.youtube.value : this.youtube,
      price: data.price.present ? data.price.value : this.price,
      count: data.count.present ? data.count.value : this.count,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MealSqlModel(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('instructions: $instructions, ')
          ..write('category: $category, ')
          ..write('area: $area, ')
          ..write('tags: $tags, ')
          ..write('youtube: $youtube, ')
          ..write('price: $price, ')
          ..write('count: $count')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, thumbnail, instructions, category,
      area, tags, youtube, price, count);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MealSqlModel &&
          other.id == this.id &&
          other.name == this.name &&
          other.thumbnail == this.thumbnail &&
          other.instructions == this.instructions &&
          other.category == this.category &&
          other.area == this.area &&
          other.tags == this.tags &&
          other.youtube == this.youtube &&
          other.price == this.price &&
          other.count == this.count);
}

class MealsCompanion extends UpdateCompanion<MealSqlModel> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> thumbnail;
  final Value<String?> instructions;
  final Value<String?> category;
  final Value<String?> area;
  final Value<String?> tags;
  final Value<String?> youtube;
  final Value<double> price;
  final Value<int> count;
  final Value<int> rowid;
  const MealsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.instructions = const Value.absent(),
    this.category = const Value.absent(),
    this.area = const Value.absent(),
    this.tags = const Value.absent(),
    this.youtube = const Value.absent(),
    this.price = const Value.absent(),
    this.count = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MealsCompanion.insert({
    required String id,
    required String name,
    required String thumbnail,
    this.instructions = const Value.absent(),
    this.category = const Value.absent(),
    this.area = const Value.absent(),
    this.tags = const Value.absent(),
    this.youtube = const Value.absent(),
    required double price,
    this.count = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        thumbnail = Value(thumbnail),
        price = Value(price);
  static Insertable<MealSqlModel> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? thumbnail,
    Expression<String>? instructions,
    Expression<String>? category,
    Expression<String>? area,
    Expression<String>? tags,
    Expression<String>? youtube,
    Expression<double>? price,
    Expression<int>? count,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (instructions != null) 'instructions': instructions,
      if (category != null) 'category': category,
      if (area != null) 'area': area,
      if (tags != null) 'tags': tags,
      if (youtube != null) 'youtube': youtube,
      if (price != null) 'price': price,
      if (count != null) 'count': count,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MealsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? thumbnail,
      Value<String?>? instructions,
      Value<String?>? category,
      Value<String?>? area,
      Value<String?>? tags,
      Value<String?>? youtube,
      Value<double>? price,
      Value<int>? count,
      Value<int>? rowid}) {
    return MealsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      thumbnail: thumbnail ?? this.thumbnail,
      instructions: instructions ?? this.instructions,
      category: category ?? this.category,
      area: area ?? this.area,
      tags: tags ?? this.tags,
      youtube: youtube ?? this.youtube,
      price: price ?? this.price,
      count: count ?? this.count,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (instructions.present) {
      map['instructions'] = Variable<String>(instructions.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (youtube.present) {
      map['youtube'] = Variable<String>(youtube.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('instructions: $instructions, ')
          ..write('category: $category, ')
          ..write('area: $area, ')
          ..write('tags: $tags, ')
          ..write('youtube: $youtube, ')
          ..write('price: $price, ')
          ..write('count: $count, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MealsTable meals = $MealsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [meals];
}

typedef $$MealsTableCreateCompanionBuilder = MealsCompanion Function({
  required String id,
  required String name,
  required String thumbnail,
  Value<String?> instructions,
  Value<String?> category,
  Value<String?> area,
  Value<String?> tags,
  Value<String?> youtube,
  required double price,
  Value<int> count,
  Value<int> rowid,
});
typedef $$MealsTableUpdateCompanionBuilder = MealsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> thumbnail,
  Value<String?> instructions,
  Value<String?> category,
  Value<String?> area,
  Value<String?> tags,
  Value<String?> youtube,
  Value<double> price,
  Value<int> count,
  Value<int> rowid,
});

class $$MealsTableFilterComposer extends Composer<_$AppDatabase, $MealsTable> {
  $$MealsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get thumbnail => $composableBuilder(
      column: $table.thumbnail, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get instructions => $composableBuilder(
      column: $table.instructions, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get area => $composableBuilder(
      column: $table.area, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get youtube => $composableBuilder(
      column: $table.youtube, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get count => $composableBuilder(
      column: $table.count, builder: (column) => ColumnFilters(column));
}

class $$MealsTableOrderingComposer
    extends Composer<_$AppDatabase, $MealsTable> {
  $$MealsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get thumbnail => $composableBuilder(
      column: $table.thumbnail, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get instructions => $composableBuilder(
      column: $table.instructions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get area => $composableBuilder(
      column: $table.area, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get youtube => $composableBuilder(
      column: $table.youtube, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get count => $composableBuilder(
      column: $table.count, builder: (column) => ColumnOrderings(column));
}

class $$MealsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MealsTable> {
  $$MealsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get thumbnail =>
      $composableBuilder(column: $table.thumbnail, builder: (column) => column);

  GeneratedColumn<String> get instructions => $composableBuilder(
      column: $table.instructions, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get area =>
      $composableBuilder(column: $table.area, builder: (column) => column);

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<String> get youtube =>
      $composableBuilder(column: $table.youtube, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get count =>
      $composableBuilder(column: $table.count, builder: (column) => column);
}

class $$MealsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MealsTable,
    MealSqlModel,
    $$MealsTableFilterComposer,
    $$MealsTableOrderingComposer,
    $$MealsTableAnnotationComposer,
    $$MealsTableCreateCompanionBuilder,
    $$MealsTableUpdateCompanionBuilder,
    (MealSqlModel, BaseReferences<_$AppDatabase, $MealsTable, MealSqlModel>),
    MealSqlModel,
    PrefetchHooks Function()> {
  $$MealsTableTableManager(_$AppDatabase db, $MealsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MealsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MealsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MealsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> thumbnail = const Value.absent(),
            Value<String?> instructions = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> area = const Value.absent(),
            Value<String?> tags = const Value.absent(),
            Value<String?> youtube = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> count = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MealsCompanion(
            id: id,
            name: name,
            thumbnail: thumbnail,
            instructions: instructions,
            category: category,
            area: area,
            tags: tags,
            youtube: youtube,
            price: price,
            count: count,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String thumbnail,
            Value<String?> instructions = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> area = const Value.absent(),
            Value<String?> tags = const Value.absent(),
            Value<String?> youtube = const Value.absent(),
            required double price,
            Value<int> count = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MealsCompanion.insert(
            id: id,
            name: name,
            thumbnail: thumbnail,
            instructions: instructions,
            category: category,
            area: area,
            tags: tags,
            youtube: youtube,
            price: price,
            count: count,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MealsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MealsTable,
    MealSqlModel,
    $$MealsTableFilterComposer,
    $$MealsTableOrderingComposer,
    $$MealsTableAnnotationComposer,
    $$MealsTableCreateCompanionBuilder,
    $$MealsTableUpdateCompanionBuilder,
    (MealSqlModel, BaseReferences<_$AppDatabase, $MealsTable, MealSqlModel>),
    MealSqlModel,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MealsTableTableManager get meals =>
      $$MealsTableTableManager(_db, _db.meals);
}
