// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDashBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDashBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDashBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDashBoard value) getDashBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDashBoard value)? getDashBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDashBoard value)? getDashBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getDashBoardCopyWith<$Res> {
  factory _$$_getDashBoardCopyWith(
          _$_getDashBoard value, $Res Function(_$_getDashBoard) then) =
      __$$_getDashBoardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getDashBoardCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_getDashBoard>
    implements _$$_getDashBoardCopyWith<$Res> {
  __$$_getDashBoardCopyWithImpl(
      _$_getDashBoard _value, $Res Function(_$_getDashBoard) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getDashBoard implements _getDashBoard {
  const _$_getDashBoard();

  @override
  String toString() {
    return 'DashboardEvent.getDashBoard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getDashBoard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDashBoard,
  }) {
    return getDashBoard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDashBoard,
  }) {
    return getDashBoard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDashBoard,
    required TResult orElse(),
  }) {
    if (getDashBoard != null) {
      return getDashBoard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDashBoard value) getDashBoard,
  }) {
    return getDashBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDashBoard value)? getDashBoard,
  }) {
    return getDashBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDashBoard value)? getDashBoard,
    required TResult orElse(),
  }) {
    if (getDashBoard != null) {
      return getDashBoard(this);
    }
    return orElse();
  }
}

abstract class _getDashBoard implements DashboardEvent {
  const factory _getDashBoard() = _$_getDashBoard;
}

/// @nodoc
mixin _$DashboardState {
  ApiResponse<DashBoardModel> get dashBoardData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({ApiResponse<DashBoardModel> dashBoardData});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashBoardData = null,
  }) {
    return _then(_value.copyWith(
      dashBoardData: null == dashBoardData
          ? _value.dashBoardData
          : dashBoardData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DashBoardModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$dashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$dashboardStateCopyWith(
          _$dashboardState value, $Res Function(_$dashboardState) then) =
      __$$dashboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<DashBoardModel> dashBoardData});
}

/// @nodoc
class __$$dashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$dashboardState>
    implements _$$dashboardStateCopyWith<$Res> {
  __$$dashboardStateCopyWithImpl(
      _$dashboardState _value, $Res Function(_$dashboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashBoardData = null,
  }) {
    return _then(_$dashboardState(
      dashBoardData: null == dashBoardData
          ? _value.dashBoardData
          : dashBoardData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DashBoardModel>,
    ));
  }
}

/// @nodoc

class _$dashboardState implements dashboardState {
  const _$dashboardState({required this.dashBoardData});

  @override
  final ApiResponse<DashBoardModel> dashBoardData;

  @override
  String toString() {
    return 'DashboardState(dashBoardData: $dashBoardData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$dashboardState &&
            (identical(other.dashBoardData, dashBoardData) ||
                other.dashBoardData == dashBoardData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dashBoardData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$dashboardStateCopyWith<_$dashboardState> get copyWith =>
      __$$dashboardStateCopyWithImpl<_$dashboardState>(this, _$identity);
}

abstract class dashboardState implements DashboardState {
  const factory dashboardState(
          {required final ApiResponse<DashBoardModel> dashBoardData}) =
      _$dashboardState;

  @override
  ApiResponse<DashBoardModel> get dashBoardData;
  @override
  @JsonKey(ignore: true)
  _$$dashboardStateCopyWith<_$dashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
