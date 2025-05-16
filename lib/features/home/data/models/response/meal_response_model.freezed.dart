// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealsResponseModel _$MealsResponseModelFromJson(Map<String, dynamic> json) {
  return _MealsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MealsResponseModel {
  List<MealModel> get meals => throw _privateConstructorUsedError;

  /// Serializes this MealsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealsResponseModelCopyWith<MealsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsResponseModelCopyWith<$Res> {
  factory $MealsResponseModelCopyWith(
          MealsResponseModel value, $Res Function(MealsResponseModel) then) =
      _$MealsResponseModelCopyWithImpl<$Res, MealsResponseModel>;
  @useResult
  $Res call({List<MealModel> meals});
}

/// @nodoc
class _$MealsResponseModelCopyWithImpl<$Res, $Val extends MealsResponseModel>
    implements $MealsResponseModelCopyWith<$Res> {
  _$MealsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_value.copyWith(
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealsResponseModelImplCopyWith<$Res>
    implements $MealsResponseModelCopyWith<$Res> {
  factory _$$MealsResponseModelImplCopyWith(_$MealsResponseModelImpl value,
          $Res Function(_$MealsResponseModelImpl) then) =
      __$$MealsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MealModel> meals});
}

/// @nodoc
class __$$MealsResponseModelImplCopyWithImpl<$Res>
    extends _$MealsResponseModelCopyWithImpl<$Res, _$MealsResponseModelImpl>
    implements _$$MealsResponseModelImplCopyWith<$Res> {
  __$$MealsResponseModelImplCopyWithImpl(_$MealsResponseModelImpl _value,
      $Res Function(_$MealsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_$MealsResponseModelImpl(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealsResponseModelImpl extends _MealsResponseModel {
  const _$MealsResponseModelImpl(
      {final List<MealModel> meals = const <MealModel>[]})
      : _meals = meals,
        super._();

  factory _$MealsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealsResponseModelImplFromJson(json);

  final List<MealModel> _meals;
  @override
  @JsonKey()
  List<MealModel> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'MealsResponseModel(meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsResponseModelImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  /// Create a copy of MealsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsResponseModelImplCopyWith<_$MealsResponseModelImpl> get copyWith =>
      __$$MealsResponseModelImplCopyWithImpl<_$MealsResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MealsResponseModel extends MealsResponseModel {
  const factory _MealsResponseModel({final List<MealModel> meals}) =
      _$MealsResponseModelImpl;
  const _MealsResponseModel._() : super._();

  factory _MealsResponseModel.fromJson(Map<String, dynamic> json) =
      _$MealsResponseModelImpl.fromJson;

  @override
  List<MealModel> get meals;

  /// Create a copy of MealsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealsResponseModelImplCopyWith<_$MealsResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealModel _$MealModelFromJson(Map<String, dynamic> json) {
  return _MealModel.fromJson(json);
}

/// @nodoc
mixin _$MealModel {
  @JsonKey(name: 'idMeal')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'strMeal')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'strMealThumb')
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'strInstructions')
  String? get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'strCategory')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'strArea')
  String? get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'strTags')
  String? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'strYoutube')
  String? get youtube => throw _privateConstructorUsedError;

  /// Serializes this MealModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealModelCopyWith<MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealModelCopyWith<$Res> {
  factory $MealModelCopyWith(MealModel value, $Res Function(MealModel) then) =
      _$MealModelCopyWithImpl<$Res, MealModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idMeal') String id,
      @JsonKey(name: 'strMeal') String name,
      @JsonKey(name: 'strMealThumb') String thumbnail,
      @JsonKey(name: 'strInstructions') String? instructions,
      @JsonKey(name: 'strCategory') String? category,
      @JsonKey(name: 'strArea') String? area,
      @JsonKey(name: 'strTags') String? tags,
      @JsonKey(name: 'strYoutube') String? youtube});
}

/// @nodoc
class _$MealModelCopyWithImpl<$Res, $Val extends MealModel>
    implements $MealModelCopyWith<$Res> {
  _$MealModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnail = null,
    Object? instructions = freezed,
    Object? category = freezed,
    Object? area = freezed,
    Object? tags = freezed,
    Object? youtube = freezed,
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
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: freezed == youtube
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealModelImplCopyWith<$Res>
    implements $MealModelCopyWith<$Res> {
  factory _$$MealModelImplCopyWith(
          _$MealModelImpl value, $Res Function(_$MealModelImpl) then) =
      __$$MealModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idMeal') String id,
      @JsonKey(name: 'strMeal') String name,
      @JsonKey(name: 'strMealThumb') String thumbnail,
      @JsonKey(name: 'strInstructions') String? instructions,
      @JsonKey(name: 'strCategory') String? category,
      @JsonKey(name: 'strArea') String? area,
      @JsonKey(name: 'strTags') String? tags,
      @JsonKey(name: 'strYoutube') String? youtube});
}

/// @nodoc
class __$$MealModelImplCopyWithImpl<$Res>
    extends _$MealModelCopyWithImpl<$Res, _$MealModelImpl>
    implements _$$MealModelImplCopyWith<$Res> {
  __$$MealModelImplCopyWithImpl(
      _$MealModelImpl _value, $Res Function(_$MealModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnail = null,
    Object? instructions = freezed,
    Object? category = freezed,
    Object? area = freezed,
    Object? tags = freezed,
    Object? youtube = freezed,
  }) {
    return _then(_$MealModelImpl(
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
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: freezed == youtube
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealModelImpl extends _MealModel {
  const _$MealModelImpl(
      {@JsonKey(name: 'idMeal') required this.id,
      @JsonKey(name: 'strMeal') required this.name,
      @JsonKey(name: 'strMealThumb') required this.thumbnail,
      @JsonKey(name: 'strInstructions') this.instructions,
      @JsonKey(name: 'strCategory') this.category,
      @JsonKey(name: 'strArea') this.area,
      @JsonKey(name: 'strTags') this.tags,
      @JsonKey(name: 'strYoutube') this.youtube})
      : super._();

  factory _$MealModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealModelImplFromJson(json);

  @override
  @JsonKey(name: 'idMeal')
  final String id;
  @override
  @JsonKey(name: 'strMeal')
  final String name;
  @override
  @JsonKey(name: 'strMealThumb')
  final String thumbnail;
  @override
  @JsonKey(name: 'strInstructions')
  final String? instructions;
  @override
  @JsonKey(name: 'strCategory')
  final String? category;
  @override
  @JsonKey(name: 'strArea')
  final String? area;
  @override
  @JsonKey(name: 'strTags')
  final String? tags;
  @override
  @JsonKey(name: 'strYoutube')
  final String? youtube;

  @override
  String toString() {
    return 'MealModel(id: $id, name: $name, thumbnail: $thumbnail, instructions: $instructions, category: $category, area: $area, tags: $tags, youtube: $youtube)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.youtube, youtube) || other.youtube == youtube));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, thumbnail,
      instructions, category, area, tags, youtube);

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealModelImplCopyWith<_$MealModelImpl> get copyWith =>
      __$$MealModelImplCopyWithImpl<_$MealModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealModelImplToJson(
      this,
    );
  }
}

abstract class _MealModel extends MealModel {
  const factory _MealModel(
      {@JsonKey(name: 'idMeal') required final String id,
      @JsonKey(name: 'strMeal') required final String name,
      @JsonKey(name: 'strMealThumb') required final String thumbnail,
      @JsonKey(name: 'strInstructions') final String? instructions,
      @JsonKey(name: 'strCategory') final String? category,
      @JsonKey(name: 'strArea') final String? area,
      @JsonKey(name: 'strTags') final String? tags,
      @JsonKey(name: 'strYoutube') final String? youtube}) = _$MealModelImpl;
  const _MealModel._() : super._();

  factory _MealModel.fromJson(Map<String, dynamic> json) =
      _$MealModelImpl.fromJson;

  @override
  @JsonKey(name: 'idMeal')
  String get id;
  @override
  @JsonKey(name: 'strMeal')
  String get name;
  @override
  @JsonKey(name: 'strMealThumb')
  String get thumbnail;
  @override
  @JsonKey(name: 'strInstructions')
  String? get instructions;
  @override
  @JsonKey(name: 'strCategory')
  String? get category;
  @override
  @JsonKey(name: 'strArea')
  String? get area;
  @override
  @JsonKey(name: 'strTags')
  String? get tags;
  @override
  @JsonKey(name: 'strYoutube')
  String? get youtube;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealModelImplCopyWith<_$MealModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
