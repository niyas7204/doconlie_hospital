// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DepartmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDepartments,
    required TResult Function(String name) addDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDepartments,
    TResult? Function(String name)? addDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDepartments,
    TResult Function(String name)? addDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_addDepartments value) addDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_addDepartments value)? addDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_addDepartments value)? addDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentEventCopyWith<$Res> {
  factory $DepartmentEventCopyWith(
          DepartmentEvent value, $Res Function(DepartmentEvent) then) =
      _$DepartmentEventCopyWithImpl<$Res, DepartmentEvent>;
}

/// @nodoc
class _$DepartmentEventCopyWithImpl<$Res, $Val extends DepartmentEvent>
    implements $DepartmentEventCopyWith<$Res> {
  _$DepartmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getDepartmentsCopyWith<$Res> {
  factory _$$_getDepartmentsCopyWith(
          _$_getDepartments value, $Res Function(_$_getDepartments) then) =
      __$$_getDepartmentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getDepartmentsCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$_getDepartments>
    implements _$$_getDepartmentsCopyWith<$Res> {
  __$$_getDepartmentsCopyWithImpl(
      _$_getDepartments _value, $Res Function(_$_getDepartments) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getDepartments implements _getDepartments {
  const _$_getDepartments();

  @override
  String toString() {
    return 'DepartmentEvent.getDepartments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getDepartments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDepartments,
    required TResult Function(String name) addDepartment,
  }) {
    return getDepartments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDepartments,
    TResult? Function(String name)? addDepartment,
  }) {
    return getDepartments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDepartments,
    TResult Function(String name)? addDepartment,
    required TResult orElse(),
  }) {
    if (getDepartments != null) {
      return getDepartments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_addDepartments value) addDepartment,
  }) {
    return getDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_addDepartments value)? addDepartment,
  }) {
    return getDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_addDepartments value)? addDepartment,
    required TResult orElse(),
  }) {
    if (getDepartments != null) {
      return getDepartments(this);
    }
    return orElse();
  }
}

abstract class _getDepartments implements DepartmentEvent {
  const factory _getDepartments() = _$_getDepartments;
}

/// @nodoc
abstract class _$$_addDepartmentsCopyWith<$Res> {
  factory _$$_addDepartmentsCopyWith(
          _$_addDepartments value, $Res Function(_$_addDepartments) then) =
      __$$_addDepartmentsCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_addDepartmentsCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$_addDepartments>
    implements _$$_addDepartmentsCopyWith<$Res> {
  __$$_addDepartmentsCopyWithImpl(
      _$_addDepartments _value, $Res Function(_$_addDepartments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_addDepartments(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_addDepartments implements _addDepartments {
  const _$_addDepartments({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'DepartmentEvent.addDepartment(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_addDepartments &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_addDepartmentsCopyWith<_$_addDepartments> get copyWith =>
      __$$_addDepartmentsCopyWithImpl<_$_addDepartments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDepartments,
    required TResult Function(String name) addDepartment,
  }) {
    return addDepartment(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDepartments,
    TResult? Function(String name)? addDepartment,
  }) {
    return addDepartment?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDepartments,
    TResult Function(String name)? addDepartment,
    required TResult orElse(),
  }) {
    if (addDepartment != null) {
      return addDepartment(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_addDepartments value) addDepartment,
  }) {
    return addDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_addDepartments value)? addDepartment,
  }) {
    return addDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_addDepartments value)? addDepartment,
    required TResult orElse(),
  }) {
    if (addDepartment != null) {
      return addDepartment(this);
    }
    return orElse();
  }
}

abstract class _addDepartments implements DepartmentEvent {
  const factory _addDepartments({required final String name}) =
      _$_addDepartments;

  String get name;
  @JsonKey(ignore: true)
  _$$_addDepartmentsCopyWith<_$_addDepartments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepartmentState {
  ApiResponse<DepartmentModel> get departments =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepartmentStateCopyWith<DepartmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStateCopyWith<$Res> {
  factory $DepartmentStateCopyWith(
          DepartmentState value, $Res Function(DepartmentState) then) =
      _$DepartmentStateCopyWithImpl<$Res, DepartmentState>;
  @useResult
  $Res call({ApiResponse<DepartmentModel> departments});
}

/// @nodoc
class _$DepartmentStateCopyWithImpl<$Res, $Val extends DepartmentState>
    implements $DepartmentStateCopyWith<$Res> {
  _$DepartmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_value.copyWith(
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DepartmentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentStateCopyWith<$Res>
    implements $DepartmentStateCopyWith<$Res> {
  factory _$$_DepartmentStateCopyWith(
          _$_DepartmentState value, $Res Function(_$_DepartmentState) then) =
      __$$_DepartmentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<DepartmentModel> departments});
}

/// @nodoc
class __$$_DepartmentStateCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$_DepartmentState>
    implements _$$_DepartmentStateCopyWith<$Res> {
  __$$_DepartmentStateCopyWithImpl(
      _$_DepartmentState _value, $Res Function(_$_DepartmentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_$_DepartmentState(
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DepartmentModel>,
    ));
  }
}

/// @nodoc

class _$_DepartmentState implements _DepartmentState {
  const _$_DepartmentState({required this.departments});

  @override
  final ApiResponse<DepartmentModel> departments;

  @override
  String toString() {
    return 'DepartmentState(departments: $departments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentState &&
            (identical(other.departments, departments) ||
                other.departments == departments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentStateCopyWith<_$_DepartmentState> get copyWith =>
      __$$_DepartmentStateCopyWithImpl<_$_DepartmentState>(this, _$identity);
}

abstract class _DepartmentState implements DepartmentState {
  const factory _DepartmentState(
          {required final ApiResponse<DepartmentModel> departments}) =
      _$_DepartmentState;

  @override
  ApiResponse<DepartmentModel> get departments;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentStateCopyWith<_$_DepartmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
