// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function() clientFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function()? clientFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function()? clientFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serverFailure value) serverFailure,
    required TResult Function(_clientFailure value) clientFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_serverFailure value)? serverFailure,
    TResult? Function(_clientFailure value)? clientFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serverFailure value)? serverFailure,
    TResult Function(_clientFailure value)? clientFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_serverFailureCopyWith<$Res> {
  factory _$$_serverFailureCopyWith(
          _$_serverFailure value, $Res Function(_$_serverFailure) then) =
      __$$_serverFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_serverFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_serverFailure>
    implements _$$_serverFailureCopyWith<$Res> {
  __$$_serverFailureCopyWithImpl(
      _$_serverFailure _value, $Res Function(_$_serverFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_serverFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_serverFailure implements _serverFailure {
  const _$_serverFailure(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'MainFailure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_serverFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_serverFailureCopyWith<_$_serverFailure> get copyWith =>
      __$$_serverFailureCopyWithImpl<_$_serverFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function() clientFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function()? clientFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function()? clientFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serverFailure value) serverFailure,
    required TResult Function(_clientFailure value) clientFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_serverFailure value)? serverFailure,
    TResult? Function(_clientFailure value)? clientFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serverFailure value)? serverFailure,
    TResult Function(_clientFailure value)? clientFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _serverFailure implements MainFailure {
  const factory _serverFailure(final String? message) = _$_serverFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$$_serverFailureCopyWith<_$_serverFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_clientFailureCopyWith<$Res> {
  factory _$$_clientFailureCopyWith(
          _$_clientFailure value, $Res Function(_$_clientFailure) then) =
      __$$_clientFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_clientFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_clientFailure>
    implements _$$_clientFailureCopyWith<$Res> {
  __$$_clientFailureCopyWithImpl(
      _$_clientFailure _value, $Res Function(_$_clientFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_clientFailure implements _clientFailure {
  const _$_clientFailure();

  @override
  String toString() {
    return 'MainFailure.clientFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_clientFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function() clientFailure,
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function()? clientFailure,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function()? clientFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serverFailure value) serverFailure,
    required TResult Function(_clientFailure value) clientFailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_serverFailure value)? serverFailure,
    TResult? Function(_clientFailure value)? clientFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serverFailure value)? serverFailure,
    TResult Function(_clientFailure value)? clientFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _clientFailure implements MainFailure {
  const factory _clientFailure() = _$_clientFailure;
}
