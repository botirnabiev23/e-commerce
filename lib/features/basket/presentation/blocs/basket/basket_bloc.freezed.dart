// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MealEntity meal) addMeal,
    required TResult Function(MealEntity meal) removeMeal,
    required TResult Function(List<MealEntity> meals) updated,
    required TResult Function() clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MealEntity meal)? addMeal,
    TResult? Function(MealEntity meal)? removeMeal,
    TResult? Function(List<MealEntity> meals)? updated,
    TResult? Function()? clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MealEntity meal)? addMeal,
    TResult Function(MealEntity meal)? removeMeal,
    TResult Function(List<MealEntity> meals)? updated,
    TResult Function()? clean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Clean value) clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Clean value)? clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_Updated value)? updated,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketEventCopyWith<$Res> {
  factory $BasketEventCopyWith(
          BasketEvent value, $Res Function(BasketEvent) then) =
      _$BasketEventCopyWithImpl<$Res, BasketEvent>;
}

/// @nodoc
class _$BasketEventCopyWithImpl<$Res, $Val extends BasketEvent>
    implements $BasketEventCopyWith<$Res> {
  _$BasketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BasketEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MealEntity meal) addMeal,
    required TResult Function(MealEntity meal) removeMeal,
    required TResult Function(List<MealEntity> meals) updated,
    required TResult Function() clean,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MealEntity meal)? addMeal,
    TResult? Function(MealEntity meal)? removeMeal,
    TResult? Function(List<MealEntity> meals)? updated,
    TResult? Function()? clean,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MealEntity meal)? addMeal,
    TResult Function(MealEntity meal)? removeMeal,
    TResult Function(List<MealEntity> meals)? updated,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Clean value) clean,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Clean value)? clean,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_Updated value)? updated,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BasketEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddMealImplCopyWith<$Res> {
  factory _$$AddMealImplCopyWith(
          _$AddMealImpl value, $Res Function(_$AddMealImpl) then) =
      __$$AddMealImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MealEntity meal});
}

/// @nodoc
class __$$AddMealImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$AddMealImpl>
    implements _$$AddMealImplCopyWith<$Res> {
  __$$AddMealImplCopyWithImpl(
      _$AddMealImpl _value, $Res Function(_$AddMealImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = null,
  }) {
    return _then(_$AddMealImpl(
      null == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealEntity,
    ));
  }
}

/// @nodoc

class _$AddMealImpl implements _AddMeal {
  const _$AddMealImpl(this.meal);

  @override
  final MealEntity meal;

  @override
  String toString() {
    return 'BasketEvent.addMeal(meal: $meal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMealImpl &&
            (identical(other.meal, meal) || other.meal == meal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meal);

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMealImplCopyWith<_$AddMealImpl> get copyWith =>
      __$$AddMealImplCopyWithImpl<_$AddMealImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MealEntity meal) addMeal,
    required TResult Function(MealEntity meal) removeMeal,
    required TResult Function(List<MealEntity> meals) updated,
    required TResult Function() clean,
  }) {
    return addMeal(meal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MealEntity meal)? addMeal,
    TResult? Function(MealEntity meal)? removeMeal,
    TResult? Function(List<MealEntity> meals)? updated,
    TResult? Function()? clean,
  }) {
    return addMeal?.call(meal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MealEntity meal)? addMeal,
    TResult Function(MealEntity meal)? removeMeal,
    TResult Function(List<MealEntity> meals)? updated,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(meal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Clean value) clean,
  }) {
    return addMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Clean value)? clean,
  }) {
    return addMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_Updated value)? updated,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(this);
    }
    return orElse();
  }
}

abstract class _AddMeal implements BasketEvent {
  const factory _AddMeal(final MealEntity meal) = _$AddMealImpl;

  MealEntity get meal;

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMealImplCopyWith<_$AddMealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveMealImplCopyWith<$Res> {
  factory _$$RemoveMealImplCopyWith(
          _$RemoveMealImpl value, $Res Function(_$RemoveMealImpl) then) =
      __$$RemoveMealImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MealEntity meal});
}

/// @nodoc
class __$$RemoveMealImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$RemoveMealImpl>
    implements _$$RemoveMealImplCopyWith<$Res> {
  __$$RemoveMealImplCopyWithImpl(
      _$RemoveMealImpl _value, $Res Function(_$RemoveMealImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = null,
  }) {
    return _then(_$RemoveMealImpl(
      null == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealEntity,
    ));
  }
}

/// @nodoc

class _$RemoveMealImpl implements _RemoveMeal {
  const _$RemoveMealImpl(this.meal);

  @override
  final MealEntity meal;

  @override
  String toString() {
    return 'BasketEvent.removeMeal(meal: $meal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveMealImpl &&
            (identical(other.meal, meal) || other.meal == meal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meal);

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveMealImplCopyWith<_$RemoveMealImpl> get copyWith =>
      __$$RemoveMealImplCopyWithImpl<_$RemoveMealImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MealEntity meal) addMeal,
    required TResult Function(MealEntity meal) removeMeal,
    required TResult Function(List<MealEntity> meals) updated,
    required TResult Function() clean,
  }) {
    return removeMeal(meal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MealEntity meal)? addMeal,
    TResult? Function(MealEntity meal)? removeMeal,
    TResult? Function(List<MealEntity> meals)? updated,
    TResult? Function()? clean,
  }) {
    return removeMeal?.call(meal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MealEntity meal)? addMeal,
    TResult Function(MealEntity meal)? removeMeal,
    TResult Function(List<MealEntity> meals)? updated,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (removeMeal != null) {
      return removeMeal(meal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Clean value) clean,
  }) {
    return removeMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Clean value)? clean,
  }) {
    return removeMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_Updated value)? updated,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) {
    if (removeMeal != null) {
      return removeMeal(this);
    }
    return orElse();
  }
}

abstract class _RemoveMeal implements BasketEvent {
  const factory _RemoveMeal(final MealEntity meal) = _$RemoveMealImpl;

  MealEntity get meal;

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveMealImplCopyWith<_$RemoveMealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MealEntity> meals});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_$UpdatedImpl(
      null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealEntity>,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(final List<MealEntity> meals) : _meals = meals;

  final List<MealEntity> _meals;
  @override
  List<MealEntity> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'BasketEvent.updated(meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MealEntity meal) addMeal,
    required TResult Function(MealEntity meal) removeMeal,
    required TResult Function(List<MealEntity> meals) updated,
    required TResult Function() clean,
  }) {
    return updated(meals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MealEntity meal)? addMeal,
    TResult? Function(MealEntity meal)? removeMeal,
    TResult? Function(List<MealEntity> meals)? updated,
    TResult? Function()? clean,
  }) {
    return updated?.call(meals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MealEntity meal)? addMeal,
    TResult Function(MealEntity meal)? removeMeal,
    TResult Function(List<MealEntity> meals)? updated,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(meals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Clean value) clean,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Clean value)? clean,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_Updated value)? updated,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements BasketEvent {
  const factory _Updated(final List<MealEntity> meals) = _$UpdatedImpl;

  List<MealEntity> get meals;

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CleanImplCopyWith<$Res> {
  factory _$$CleanImplCopyWith(
          _$CleanImpl value, $Res Function(_$CleanImpl) then) =
      __$$CleanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CleanImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$CleanImpl>
    implements _$$CleanImplCopyWith<$Res> {
  __$$CleanImplCopyWithImpl(
      _$CleanImpl _value, $Res Function(_$CleanImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CleanImpl implements _Clean {
  const _$CleanImpl();

  @override
  String toString() {
    return 'BasketEvent.clean()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CleanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MealEntity meal) addMeal,
    required TResult Function(MealEntity meal) removeMeal,
    required TResult Function(List<MealEntity> meals) updated,
    required TResult Function() clean,
  }) {
    return clean();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MealEntity meal)? addMeal,
    TResult? Function(MealEntity meal)? removeMeal,
    TResult? Function(List<MealEntity> meals)? updated,
    TResult? Function()? clean,
  }) {
    return clean?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MealEntity meal)? addMeal,
    TResult Function(MealEntity meal)? removeMeal,
    TResult Function(List<MealEntity> meals)? updated,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (clean != null) {
      return clean();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Clean value) clean,
  }) {
    return clean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Clean value)? clean,
  }) {
    return clean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_Updated value)? updated,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) {
    if (clean != null) {
      return clean(this);
    }
    return orElse();
  }
}

abstract class _Clean implements BasketEvent {
  const factory _Clean() = _$CleanImpl;
}

/// @nodoc
mixin _$BasketState {
  List<BasketProduct> get items => throw _privateConstructorUsedError;

  /// Create a copy of BasketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketStateCopyWith<BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res, BasketState>;
  @useResult
  $Res call({List<BasketProduct> items});
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res, $Val extends BasketState>
    implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BasketProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketStateImplCopyWith<$Res>
    implements $BasketStateCopyWith<$Res> {
  factory _$$BasketStateImplCopyWith(
          _$BasketStateImpl value, $Res Function(_$BasketStateImpl) then) =
      __$$BasketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BasketProduct> items});
}

/// @nodoc
class __$$BasketStateImplCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$BasketStateImpl>
    implements _$$BasketStateImplCopyWith<$Res> {
  __$$BasketStateImplCopyWithImpl(
      _$BasketStateImpl _value, $Res Function(_$BasketStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$BasketStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BasketProduct>,
    ));
  }
}

/// @nodoc

class _$BasketStateImpl implements _BasketState {
  const _$BasketStateImpl({final List<BasketProduct> items = const []})
      : _items = items;

  final List<BasketProduct> _items;
  @override
  @JsonKey()
  List<BasketProduct> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'BasketState(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of BasketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketStateImplCopyWith<_$BasketStateImpl> get copyWith =>
      __$$BasketStateImplCopyWithImpl<_$BasketStateImpl>(this, _$identity);
}

abstract class _BasketState implements BasketState {
  const factory _BasketState({final List<BasketProduct> items}) =
      _$BasketStateImpl;

  @override
  List<BasketProduct> get items;

  /// Create a copy of BasketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketStateImplCopyWith<_$BasketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
