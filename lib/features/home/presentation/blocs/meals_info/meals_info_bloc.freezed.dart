// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meals_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MealsInfoEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadMealInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadMealInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadMealInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMealInfo value) loadMealInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMealInfo value)? loadMealInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMealInfo value)? loadMealInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MealsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealsInfoEventCopyWith<MealsInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsInfoEventCopyWith<$Res> {
  factory $MealsInfoEventCopyWith(
          MealsInfoEvent value, $Res Function(MealsInfoEvent) then) =
      _$MealsInfoEventCopyWithImpl<$Res, MealsInfoEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MealsInfoEventCopyWithImpl<$Res, $Val extends MealsInfoEvent>
    implements $MealsInfoEventCopyWith<$Res> {
  _$MealsInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadMealInfoImplCopyWith<$Res>
    implements $MealsInfoEventCopyWith<$Res> {
  factory _$$LoadMealInfoImplCopyWith(
          _$LoadMealInfoImpl value, $Res Function(_$LoadMealInfoImpl) then) =
      __$$LoadMealInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$LoadMealInfoImplCopyWithImpl<$Res>
    extends _$MealsInfoEventCopyWithImpl<$Res, _$LoadMealInfoImpl>
    implements _$$LoadMealInfoImplCopyWith<$Res> {
  __$$LoadMealInfoImplCopyWithImpl(
      _$LoadMealInfoImpl _value, $Res Function(_$LoadMealInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LoadMealInfoImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMealInfoImpl implements _LoadMealInfo {
  const _$LoadMealInfoImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MealsInfoEvent.loadMealInfo(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMealInfoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MealsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMealInfoImplCopyWith<_$LoadMealInfoImpl> get copyWith =>
      __$$LoadMealInfoImplCopyWithImpl<_$LoadMealInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadMealInfo,
  }) {
    return loadMealInfo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadMealInfo,
  }) {
    return loadMealInfo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadMealInfo,
    required TResult orElse(),
  }) {
    if (loadMealInfo != null) {
      return loadMealInfo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMealInfo value) loadMealInfo,
  }) {
    return loadMealInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMealInfo value)? loadMealInfo,
  }) {
    return loadMealInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMealInfo value)? loadMealInfo,
    required TResult orElse(),
  }) {
    if (loadMealInfo != null) {
      return loadMealInfo(this);
    }
    return orElse();
  }
}

abstract class _LoadMealInfo implements MealsInfoEvent {
  const factory _LoadMealInfo(final String id) = _$LoadMealInfoImpl;

  @override
  String get id;

  /// Create a copy of MealsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMealInfoImplCopyWith<_$LoadMealInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MealsInfoState {
  StateStatus get status => throw _privateConstructorUsedError;
  MealEntity? get meal => throw _privateConstructorUsedError;

  /// Create a copy of MealsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealsInfoStateCopyWith<MealsInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsInfoStateCopyWith<$Res> {
  factory $MealsInfoStateCopyWith(
          MealsInfoState value, $Res Function(MealsInfoState) then) =
      _$MealsInfoStateCopyWithImpl<$Res, MealsInfoState>;
  @useResult
  $Res call({StateStatus status, MealEntity? meal});
}

/// @nodoc
class _$MealsInfoStateCopyWithImpl<$Res, $Val extends MealsInfoState>
    implements $MealsInfoStateCopyWith<$Res> {
  _$MealsInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meal = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      meal: freezed == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealsInfoStateImplCopyWith<$Res>
    implements $MealsInfoStateCopyWith<$Res> {
  factory _$$MealsInfoStateImplCopyWith(_$MealsInfoStateImpl value,
          $Res Function(_$MealsInfoStateImpl) then) =
      __$$MealsInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus status, MealEntity? meal});
}

/// @nodoc
class __$$MealsInfoStateImplCopyWithImpl<$Res>
    extends _$MealsInfoStateCopyWithImpl<$Res, _$MealsInfoStateImpl>
    implements _$$MealsInfoStateImplCopyWith<$Res> {
  __$$MealsInfoStateImplCopyWithImpl(
      _$MealsInfoStateImpl _value, $Res Function(_$MealsInfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meal = freezed,
  }) {
    return _then(_$MealsInfoStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      meal: freezed == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealEntity?,
    ));
  }
}

/// @nodoc

class _$MealsInfoStateImpl implements _MealsInfoState {
  const _$MealsInfoStateImpl({this.status = const InitialStatus(), this.meal});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  final MealEntity? meal;

  @override
  String toString() {
    return 'MealsInfoState(status: $status, meal: $meal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsInfoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.meal, meal) || other.meal == meal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, meal);

  /// Create a copy of MealsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsInfoStateImplCopyWith<_$MealsInfoStateImpl> get copyWith =>
      __$$MealsInfoStateImplCopyWithImpl<_$MealsInfoStateImpl>(
          this, _$identity);
}

abstract class _MealsInfoState implements MealsInfoState {
  const factory _MealsInfoState(
      {final StateStatus status,
      final MealEntity? meal}) = _$MealsInfoStateImpl;

  @override
  StateStatus get status;
  @override
  MealEntity? get meal;

  /// Create a copy of MealsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealsInfoStateImplCopyWith<_$MealsInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
