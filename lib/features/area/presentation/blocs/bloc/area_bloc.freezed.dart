// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AreaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAreas,
    required TResult Function(String area) selectArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAreas,
    TResult? Function(String area)? selectArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAreas,
    TResult Function(String area)? selectArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAreas value) loadAreas,
    required TResult Function(_SelectArea value) selectArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAreas value)? loadAreas,
    TResult? Function(_SelectArea value)? selectArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAreas value)? loadAreas,
    TResult Function(_SelectArea value)? selectArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaEventCopyWith<$Res> {
  factory $AreaEventCopyWith(AreaEvent value, $Res Function(AreaEvent) then) =
      _$AreaEventCopyWithImpl<$Res, AreaEvent>;
}

/// @nodoc
class _$AreaEventCopyWithImpl<$Res, $Val extends AreaEvent>
    implements $AreaEventCopyWith<$Res> {
  _$AreaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadAreasImplCopyWith<$Res> {
  factory _$$LoadAreasImplCopyWith(
          _$LoadAreasImpl value, $Res Function(_$LoadAreasImpl) then) =
      __$$LoadAreasImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAreasImplCopyWithImpl<$Res>
    extends _$AreaEventCopyWithImpl<$Res, _$LoadAreasImpl>
    implements _$$LoadAreasImplCopyWith<$Res> {
  __$$LoadAreasImplCopyWithImpl(
      _$LoadAreasImpl _value, $Res Function(_$LoadAreasImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAreasImpl implements _LoadAreas {
  const _$LoadAreasImpl();

  @override
  String toString() {
    return 'AreaEvent.loadAreas()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAreasImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAreas,
    required TResult Function(String area) selectArea,
  }) {
    return loadAreas();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAreas,
    TResult? Function(String area)? selectArea,
  }) {
    return loadAreas?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAreas,
    TResult Function(String area)? selectArea,
    required TResult orElse(),
  }) {
    if (loadAreas != null) {
      return loadAreas();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAreas value) loadAreas,
    required TResult Function(_SelectArea value) selectArea,
  }) {
    return loadAreas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAreas value)? loadAreas,
    TResult? Function(_SelectArea value)? selectArea,
  }) {
    return loadAreas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAreas value)? loadAreas,
    TResult Function(_SelectArea value)? selectArea,
    required TResult orElse(),
  }) {
    if (loadAreas != null) {
      return loadAreas(this);
    }
    return orElse();
  }
}

abstract class _LoadAreas implements AreaEvent {
  const factory _LoadAreas() = _$LoadAreasImpl;
}

/// @nodoc
abstract class _$$SelectAreaImplCopyWith<$Res> {
  factory _$$SelectAreaImplCopyWith(
          _$SelectAreaImpl value, $Res Function(_$SelectAreaImpl) then) =
      __$$SelectAreaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String area});
}

/// @nodoc
class __$$SelectAreaImplCopyWithImpl<$Res>
    extends _$AreaEventCopyWithImpl<$Res, _$SelectAreaImpl>
    implements _$$SelectAreaImplCopyWith<$Res> {
  __$$SelectAreaImplCopyWithImpl(
      _$SelectAreaImpl _value, $Res Function(_$SelectAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
  }) {
    return _then(_$SelectAreaImpl(
      null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectAreaImpl implements _SelectArea {
  const _$SelectAreaImpl(this.area);

  @override
  final String area;

  @override
  String toString() {
    return 'AreaEvent.selectArea(area: $area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAreaImpl &&
            (identical(other.area, area) || other.area == area));
  }

  @override
  int get hashCode => Object.hash(runtimeType, area);

  /// Create a copy of AreaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAreaImplCopyWith<_$SelectAreaImpl> get copyWith =>
      __$$SelectAreaImplCopyWithImpl<_$SelectAreaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAreas,
    required TResult Function(String area) selectArea,
  }) {
    return selectArea(area);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAreas,
    TResult? Function(String area)? selectArea,
  }) {
    return selectArea?.call(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAreas,
    TResult Function(String area)? selectArea,
    required TResult orElse(),
  }) {
    if (selectArea != null) {
      return selectArea(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAreas value) loadAreas,
    required TResult Function(_SelectArea value) selectArea,
  }) {
    return selectArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAreas value)? loadAreas,
    TResult? Function(_SelectArea value)? selectArea,
  }) {
    return selectArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAreas value)? loadAreas,
    TResult Function(_SelectArea value)? selectArea,
    required TResult orElse(),
  }) {
    if (selectArea != null) {
      return selectArea(this);
    }
    return orElse();
  }
}

abstract class _SelectArea implements AreaEvent {
  const factory _SelectArea(final String area) = _$SelectAreaImpl;

  String get area;

  /// Create a copy of AreaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAreaImplCopyWith<_$SelectAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AreaState {
  List<AreaEntity> get areas => throw _privateConstructorUsedError;
  String get selectedAreaName => throw _privateConstructorUsedError;
  List<MealEntity> get meals => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  StateStatus get mealsStatus => throw _privateConstructorUsedError;

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaStateCopyWith<AreaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaStateCopyWith<$Res> {
  factory $AreaStateCopyWith(AreaState value, $Res Function(AreaState) then) =
      _$AreaStateCopyWithImpl<$Res, AreaState>;
  @useResult
  $Res call(
      {List<AreaEntity> areas,
      String selectedAreaName,
      List<MealEntity> meals,
      StateStatus status,
      StateStatus mealsStatus});
}

/// @nodoc
class _$AreaStateCopyWithImpl<$Res, $Val extends AreaState>
    implements $AreaStateCopyWith<$Res> {
  _$AreaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areas = null,
    Object? selectedAreaName = null,
    Object? meals = null,
    Object? status = null,
    Object? mealsStatus = null,
  }) {
    return _then(_value.copyWith(
      areas: null == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<AreaEntity>,
      selectedAreaName: null == selectedAreaName
          ? _value.selectedAreaName
          : selectedAreaName // ignore: cast_nullable_to_non_nullable
              as String,
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      mealsStatus: null == mealsStatus
          ? _value.mealsStatus
          : mealsStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaStateImplCopyWith<$Res>
    implements $AreaStateCopyWith<$Res> {
  factory _$$AreaStateImplCopyWith(
          _$AreaStateImpl value, $Res Function(_$AreaStateImpl) then) =
      __$$AreaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AreaEntity> areas,
      String selectedAreaName,
      List<MealEntity> meals,
      StateStatus status,
      StateStatus mealsStatus});
}

/// @nodoc
class __$$AreaStateImplCopyWithImpl<$Res>
    extends _$AreaStateCopyWithImpl<$Res, _$AreaStateImpl>
    implements _$$AreaStateImplCopyWith<$Res> {
  __$$AreaStateImplCopyWithImpl(
      _$AreaStateImpl _value, $Res Function(_$AreaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areas = null,
    Object? selectedAreaName = null,
    Object? meals = null,
    Object? status = null,
    Object? mealsStatus = null,
  }) {
    return _then(_$AreaStateImpl(
      areas: null == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<AreaEntity>,
      selectedAreaName: null == selectedAreaName
          ? _value.selectedAreaName
          : selectedAreaName // ignore: cast_nullable_to_non_nullable
              as String,
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      mealsStatus: null == mealsStatus
          ? _value.mealsStatus
          : mealsStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ));
  }
}

/// @nodoc

class _$AreaStateImpl implements _AreaState {
  const _$AreaStateImpl(
      {final List<AreaEntity> areas = const [],
      this.selectedAreaName = '',
      final List<MealEntity> meals = const [],
      this.status = const InitialStatus(),
      this.mealsStatus = const InitialStatus()})
      : _areas = areas,
        _meals = meals;

  final List<AreaEntity> _areas;
  @override
  @JsonKey()
  List<AreaEntity> get areas {
    if (_areas is EqualUnmodifiableListView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_areas);
  }

  @override
  @JsonKey()
  final String selectedAreaName;
  final List<MealEntity> _meals;
  @override
  @JsonKey()
  List<MealEntity> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final StateStatus mealsStatus;

  @override
  String toString() {
    return 'AreaState(areas: $areas, selectedAreaName: $selectedAreaName, meals: $meals, status: $status, mealsStatus: $mealsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaStateImpl &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            (identical(other.selectedAreaName, selectedAreaName) ||
                other.selectedAreaName == selectedAreaName) &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mealsStatus, mealsStatus) ||
                other.mealsStatus == mealsStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_areas),
      selectedAreaName,
      const DeepCollectionEquality().hash(_meals),
      status,
      mealsStatus);

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaStateImplCopyWith<_$AreaStateImpl> get copyWith =>
      __$$AreaStateImplCopyWithImpl<_$AreaStateImpl>(this, _$identity);
}

abstract class _AreaState implements AreaState {
  const factory _AreaState(
      {final List<AreaEntity> areas,
      final String selectedAreaName,
      final List<MealEntity> meals,
      final StateStatus status,
      final StateStatus mealsStatus}) = _$AreaStateImpl;

  @override
  List<AreaEntity> get areas;
  @override
  String get selectedAreaName;
  @override
  List<MealEntity> get meals;
  @override
  StateStatus get status;
  @override
  StateStatus get mealsStatus;

  /// Create a copy of AreaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaStateImplCopyWith<_$AreaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
