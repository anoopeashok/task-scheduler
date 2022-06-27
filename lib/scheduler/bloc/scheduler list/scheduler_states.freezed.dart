// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scheduler_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchedulerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedulers) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SchedulerStateInitial value) initial,
    required TResult Function(_SchedulerStateLoading value) loading,
    required TResult Function(_SchedulerStateData value) data,
    required TResult Function(_SchedulerStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulerStateCopyWith<$Res> {
  factory $SchedulerStateCopyWith(
          SchedulerState value, $Res Function(SchedulerState) then) =
      _$SchedulerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SchedulerStateCopyWithImpl<$Res>
    implements $SchedulerStateCopyWith<$Res> {
  _$SchedulerStateCopyWithImpl(this._value, this._then);

  final SchedulerState _value;
  // ignore: unused_field
  final $Res Function(SchedulerState) _then;
}

/// @nodoc
abstract class _$$_SchedulerStateInitialCopyWith<$Res> {
  factory _$$_SchedulerStateInitialCopyWith(_$_SchedulerStateInitial value,
          $Res Function(_$_SchedulerStateInitial) then) =
      __$$_SchedulerStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SchedulerStateInitialCopyWithImpl<$Res>
    extends _$SchedulerStateCopyWithImpl<$Res>
    implements _$$_SchedulerStateInitialCopyWith<$Res> {
  __$$_SchedulerStateInitialCopyWithImpl(_$_SchedulerStateInitial _value,
      $Res Function(_$_SchedulerStateInitial) _then)
      : super(_value, (v) => _then(v as _$_SchedulerStateInitial));

  @override
  _$_SchedulerStateInitial get _value =>
      super._value as _$_SchedulerStateInitial;
}

/// @nodoc

class _$_SchedulerStateInitial implements _SchedulerStateInitial {
  const _$_SchedulerStateInitial();

  @override
  String toString() {
    return 'SchedulerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SchedulerStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedulers) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SchedulerStateInitial value) initial,
    required TResult Function(_SchedulerStateLoading value) loading,
    required TResult Function(_SchedulerStateData value) data,
    required TResult Function(_SchedulerStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SchedulerStateInitial implements SchedulerState {
  const factory _SchedulerStateInitial() = _$_SchedulerStateInitial;
}

/// @nodoc
abstract class _$$_SchedulerStateLoadingCopyWith<$Res> {
  factory _$$_SchedulerStateLoadingCopyWith(_$_SchedulerStateLoading value,
          $Res Function(_$_SchedulerStateLoading) then) =
      __$$_SchedulerStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SchedulerStateLoadingCopyWithImpl<$Res>
    extends _$SchedulerStateCopyWithImpl<$Res>
    implements _$$_SchedulerStateLoadingCopyWith<$Res> {
  __$$_SchedulerStateLoadingCopyWithImpl(_$_SchedulerStateLoading _value,
      $Res Function(_$_SchedulerStateLoading) _then)
      : super(_value, (v) => _then(v as _$_SchedulerStateLoading));

  @override
  _$_SchedulerStateLoading get _value =>
      super._value as _$_SchedulerStateLoading;
}

/// @nodoc

class _$_SchedulerStateLoading implements _SchedulerStateLoading {
  const _$_SchedulerStateLoading();

  @override
  String toString() {
    return 'SchedulerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SchedulerStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedulers) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SchedulerStateInitial value) initial,
    required TResult Function(_SchedulerStateLoading value) loading,
    required TResult Function(_SchedulerStateData value) data,
    required TResult Function(_SchedulerStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SchedulerStateLoading implements SchedulerState {
  const factory _SchedulerStateLoading() = _$_SchedulerStateLoading;
}

/// @nodoc
abstract class _$$_SchedulerStateDataCopyWith<$Res> {
  factory _$$_SchedulerStateDataCopyWith(_$_SchedulerStateData value,
          $Res Function(_$_SchedulerStateData) then) =
      __$$_SchedulerStateDataCopyWithImpl<$Res>;
  $Res call({List<Schedule> schedulers});
}

/// @nodoc
class __$$_SchedulerStateDataCopyWithImpl<$Res>
    extends _$SchedulerStateCopyWithImpl<$Res>
    implements _$$_SchedulerStateDataCopyWith<$Res> {
  __$$_SchedulerStateDataCopyWithImpl(
      _$_SchedulerStateData _value, $Res Function(_$_SchedulerStateData) _then)
      : super(_value, (v) => _then(v as _$_SchedulerStateData));

  @override
  _$_SchedulerStateData get _value => super._value as _$_SchedulerStateData;

  @override
  $Res call({
    Object? schedulers = freezed,
  }) {
    return _then(_$_SchedulerStateData(
      schedulers: schedulers == freezed
          ? _value._schedulers
          : schedulers // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
    ));
  }
}

/// @nodoc

class _$_SchedulerStateData implements _SchedulerStateData {
  const _$_SchedulerStateData({required final List<Schedule> schedulers})
      : _schedulers = schedulers;

  final List<Schedule> _schedulers;
  @override
  List<Schedule> get schedulers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedulers);
  }

  @override
  String toString() {
    return 'SchedulerState.data(schedulers: $schedulers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchedulerStateData &&
            const DeepCollectionEquality()
                .equals(other._schedulers, _schedulers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_schedulers));

  @JsonKey(ignore: true)
  @override
  _$$_SchedulerStateDataCopyWith<_$_SchedulerStateData> get copyWith =>
      __$$_SchedulerStateDataCopyWithImpl<_$_SchedulerStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedulers) data,
    required TResult Function(String error) error,
  }) {
    return data(schedulers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(schedulers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(schedulers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SchedulerStateInitial value) initial,
    required TResult Function(_SchedulerStateLoading value) loading,
    required TResult Function(_SchedulerStateData value) data,
    required TResult Function(_SchedulerStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _SchedulerStateData implements SchedulerState {
  const factory _SchedulerStateData(
      {required final List<Schedule> schedulers}) = _$_SchedulerStateData;

  List<Schedule> get schedulers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SchedulerStateDataCopyWith<_$_SchedulerStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SchedulerStateErrorCopyWith<$Res> {
  factory _$$_SchedulerStateErrorCopyWith(_$_SchedulerStateError value,
          $Res Function(_$_SchedulerStateError) then) =
      __$$_SchedulerStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_SchedulerStateErrorCopyWithImpl<$Res>
    extends _$SchedulerStateCopyWithImpl<$Res>
    implements _$$_SchedulerStateErrorCopyWith<$Res> {
  __$$_SchedulerStateErrorCopyWithImpl(_$_SchedulerStateError _value,
      $Res Function(_$_SchedulerStateError) _then)
      : super(_value, (v) => _then(v as _$_SchedulerStateError));

  @override
  _$_SchedulerStateError get _value => super._value as _$_SchedulerStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_SchedulerStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SchedulerStateError implements _SchedulerStateError {
  const _$_SchedulerStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SchedulerState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchedulerStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_SchedulerStateErrorCopyWith<_$_SchedulerStateError> get copyWith =>
      __$$_SchedulerStateErrorCopyWithImpl<_$_SchedulerStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Schedule> schedulers) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Schedule> schedulers)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SchedulerStateInitial value) initial,
    required TResult Function(_SchedulerStateLoading value) loading,
    required TResult Function(_SchedulerStateData value) data,
    required TResult Function(_SchedulerStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SchedulerStateInitial value)? initial,
    TResult Function(_SchedulerStateLoading value)? loading,
    TResult Function(_SchedulerStateData value)? data,
    TResult Function(_SchedulerStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SchedulerStateError implements SchedulerState {
  const factory _SchedulerStateError({required final String error}) =
      _$_SchedulerStateError;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SchedulerStateErrorCopyWith<_$_SchedulerStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
