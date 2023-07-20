// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogInEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) getLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? getLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? getLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getLogin value) getLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getLogin value)? getLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getLogin value)? getLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInEventCopyWith<LogInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInEventCopyWith<$Res> {
  factory $LogInEventCopyWith(
          LogInEvent value, $Res Function(LogInEvent) then) =
      _$LogInEventCopyWithImpl<$Res, LogInEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LogInEventCopyWithImpl<$Res, $Val extends LogInEvent>
    implements $LogInEventCopyWith<$Res> {
  _$LogInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_getLoginCopyWith<$Res> implements $LogInEventCopyWith<$Res> {
  factory _$$_getLoginCopyWith(
          _$_getLogin value, $Res Function(_$_getLogin) then) =
      __$$_getLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_getLoginCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res, _$_getLogin>
    implements _$$_getLoginCopyWith<$Res> {
  __$$_getLoginCopyWithImpl(
      _$_getLogin _value, $Res Function(_$_getLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_getLogin(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getLogin implements _getLogin {
  const _$_getLogin({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInEvent.getLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getLogin &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getLoginCopyWith<_$_getLogin> get copyWith =>
      __$$_getLoginCopyWithImpl<_$_getLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) getLogin,
  }) {
    return getLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? getLogin,
  }) {
    return getLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? getLogin,
    required TResult orElse(),
  }) {
    if (getLogin != null) {
      return getLogin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getLogin value) getLogin,
  }) {
    return getLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getLogin value)? getLogin,
  }) {
    return getLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getLogin value)? getLogin,
    required TResult orElse(),
  }) {
    if (getLogin != null) {
      return getLogin(this);
    }
    return orElse();
  }
}

abstract class _getLogin implements LogInEvent {
  const factory _getLogin(
      {required final String email,
      required final String password}) = _$_getLogin;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_getLoginCopyWith<_$_getLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LogInState {
  ApiResponse<bool>? get logresponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res, LogInState>;
  @useResult
  $Res call({ApiResponse<bool>? logresponse});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res, $Val extends LogInState>
    implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logresponse = freezed,
  }) {
    return _then(_value.copyWith(
      logresponse: freezed == logresponse
          ? _value.logresponse
          : logresponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<bool>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$loginstateCopyWith<$Res>
    implements $LogInStateCopyWith<$Res> {
  factory _$$loginstateCopyWith(
          _$loginstate value, $Res Function(_$loginstate) then) =
      __$$loginstateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<bool>? logresponse});
}

/// @nodoc
class __$$loginstateCopyWithImpl<$Res>
    extends _$LogInStateCopyWithImpl<$Res, _$loginstate>
    implements _$$loginstateCopyWith<$Res> {
  __$$loginstateCopyWithImpl(
      _$loginstate _value, $Res Function(_$loginstate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logresponse = freezed,
  }) {
    return _then(_$loginstate(
      logresponse: freezed == logresponse
          ? _value.logresponse
          : logresponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<bool>?,
    ));
  }
}

/// @nodoc

class _$loginstate implements loginstate {
  const _$loginstate({required this.logresponse});

  @override
  final ApiResponse<bool>? logresponse;

  @override
  String toString() {
    return 'LogInState(logresponse: $logresponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginstate &&
            (identical(other.logresponse, logresponse) ||
                other.logresponse == logresponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, logresponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginstateCopyWith<_$loginstate> get copyWith =>
      __$$loginstateCopyWithImpl<_$loginstate>(this, _$identity);
}

abstract class loginstate implements LogInState {
  const factory loginstate({required final ApiResponse<bool>? logresponse}) =
      _$loginstate;

  @override
  ApiResponse<bool>? get logresponse;
  @override
  @JsonKey(ignore: true)
  _$$loginstateCopyWith<_$loginstate> get copyWith =>
      throw _privateConstructorUsedError;
}
