// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesResponseModel _$CategoriesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CategoriesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesResponseModel {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;

  /// Serializes this CategoriesResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesResponseModelCopyWith<CategoriesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesResponseModelCopyWith<$Res> {
  factory $CategoriesResponseModelCopyWith(CategoriesResponseModel value,
          $Res Function(CategoriesResponseModel) then) =
      _$CategoriesResponseModelCopyWithImpl<$Res, CategoriesResponseModel>;
  @useResult
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class _$CategoriesResponseModelCopyWithImpl<$Res,
        $Val extends CategoriesResponseModel>
    implements $CategoriesResponseModelCopyWith<$Res> {
  _$CategoriesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesResponseModelImplCopyWith<$Res>
    implements $CategoriesResponseModelCopyWith<$Res> {
  factory _$$CategoriesResponseModelImplCopyWith(
          _$CategoriesResponseModelImpl value,
          $Res Function(_$CategoriesResponseModelImpl) then) =
      __$$CategoriesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class __$$CategoriesResponseModelImplCopyWithImpl<$Res>
    extends _$CategoriesResponseModelCopyWithImpl<$Res,
        _$CategoriesResponseModelImpl>
    implements _$$CategoriesResponseModelImplCopyWith<$Res> {
  __$$CategoriesResponseModelImplCopyWithImpl(
      _$CategoriesResponseModelImpl _value,
      $Res Function(_$CategoriesResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesResponseModelImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesResponseModelImpl extends _CategoriesResponseModel {
  const _$CategoriesResponseModelImpl(
      {final List<CategoryModel> categories = const <CategoryModel>[]})
      : _categories = categories,
        super._();

  factory _$CategoriesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesResponseModelImplFromJson(json);

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesResponseModel(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesResponseModelImplCopyWith<_$CategoriesResponseModelImpl>
      get copyWith => __$$CategoriesResponseModelImplCopyWithImpl<
          _$CategoriesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CategoriesResponseModel extends CategoriesResponseModel {
  const factory _CategoriesResponseModel(
      {final List<CategoryModel> categories}) = _$CategoriesResponseModelImpl;
  const _CategoriesResponseModel._() : super._();

  factory _CategoriesResponseModel.fromJson(Map<String, dynamic> json) =
      _$CategoriesResponseModelImpl.fromJson;

  @override
  List<CategoryModel> get categories;

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesResponseModelImplCopyWith<_$CategoriesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: 'idCategory')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'strCategory')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'strCategoryThumb')
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'strCategoryDescription')
  String get description => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idCategory') String id,
      @JsonKey(name: 'strCategory') String name,
      @JsonKey(name: 'strCategoryThumb') String thumbnail,
      @JsonKey(name: 'strCategoryDescription') String description});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnail = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idCategory') String id,
      @JsonKey(name: 'strCategory') String name,
      @JsonKey(name: 'strCategoryThumb') String thumbnail,
      @JsonKey(name: 'strCategoryDescription') String description});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnail = null,
    Object? description = null,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl extends _CategoryModel {
  const _$CategoryModelImpl(
      {@JsonKey(name: 'idCategory') required this.id,
      @JsonKey(name: 'strCategory') required this.name,
      @JsonKey(name: 'strCategoryThumb') required this.thumbnail,
      @JsonKey(name: 'strCategoryDescription') required this.description})
      : super._();

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'idCategory')
  final String id;
  @override
  @JsonKey(name: 'strCategory')
  final String name;
  @override
  @JsonKey(name: 'strCategoryThumb')
  final String thumbnail;
  @override
  @JsonKey(name: 'strCategoryDescription')
  final String description;

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name, thumbnail: $thumbnail, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, thumbnail, description);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel extends CategoryModel {
  const factory _CategoryModel(
      {@JsonKey(name: 'idCategory') required final String id,
      @JsonKey(name: 'strCategory') required final String name,
      @JsonKey(name: 'strCategoryThumb') required final String thumbnail,
      @JsonKey(name: 'strCategoryDescription')
      required final String description}) = _$CategoryModelImpl;
  const _CategoryModel._() : super._();

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'idCategory')
  String get id;
  @override
  @JsonKey(name: 'strCategory')
  String get name;
  @override
  @JsonKey(name: 'strCategoryThumb')
  String get thumbnail;
  @override
  @JsonKey(name: 'strCategoryDescription')
  String get description;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
