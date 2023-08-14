// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSchedule,
    required TResult Function(
            String id, Schedule currentTime, Fri newTime, String day)
        addShedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSchedule,
    TResult? Function(String id, Schedule currentTime, Fri newTime, String day)?
        addShedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSchedule,
    TResult Function(String id, Schedule currentTime, Fri newTime, String day)?
        addShedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getschedule value) getSchedule,
    required TResult Function(Addschedule value) addShedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getschedule value)? getSchedule,
    TResult? Function(Addschedule value)? addShedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getschedule value)? getSchedule,
    TResult Function(Addschedule value)? addShedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleEventCopyWith<ScheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$GetscheduleCopyWith<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  factory _$$GetscheduleCopyWith(
          _$Getschedule value, $Res Function(_$Getschedule) then) =
      __$$GetscheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetscheduleCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$Getschedule>
    implements _$$GetscheduleCopyWith<$Res> {
  __$$GetscheduleCopyWithImpl(
      _$Getschedule _value, $Res Function(_$Getschedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Getschedule(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getschedule implements Getschedule {
  const _$Getschedule({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ScheduleEvent.getSchedule(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getschedule &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetscheduleCopyWith<_$Getschedule> get copyWith =>
      __$$GetscheduleCopyWithImpl<_$Getschedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSchedule,
    required TResult Function(
            String id, Schedule currentTime, Fri newTime, String day)
        addShedule,
  }) {
    return getSchedule(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSchedule,
    TResult? Function(String id, Schedule currentTime, Fri newTime, String day)?
        addShedule,
  }) {
    return getSchedule?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSchedule,
    TResult Function(String id, Schedule currentTime, Fri newTime, String day)?
        addShedule,
    required TResult orElse(),
  }) {
    if (getSchedule != null) {
      return getSchedule(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getschedule value) getSchedule,
    required TResult Function(Addschedule value) addShedule,
  }) {
    return getSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getschedule value)? getSchedule,
    TResult? Function(Addschedule value)? addShedule,
  }) {
    return getSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getschedule value)? getSchedule,
    TResult Function(Addschedule value)? addShedule,
    required TResult orElse(),
  }) {
    if (getSchedule != null) {
      return getSchedule(this);
    }
    return orElse();
  }
}

abstract class Getschedule implements ScheduleEvent {
  const factory Getschedule({required final String id}) = _$Getschedule;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetscheduleCopyWith<_$Getschedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddscheduleCopyWith<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  factory _$$AddscheduleCopyWith(
          _$Addschedule value, $Res Function(_$Addschedule) then) =
      __$$AddscheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Schedule currentTime, Fri newTime, String day});
}

/// @nodoc
class __$$AddscheduleCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$Addschedule>
    implements _$$AddscheduleCopyWith<$Res> {
  __$$AddscheduleCopyWithImpl(
      _$Addschedule _value, $Res Function(_$Addschedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentTime = null,
    Object? newTime = null,
    Object? day = null,
  }) {
    return _then(_$Addschedule(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as Schedule,
      newTime: null == newTime
          ? _value.newTime
          : newTime // ignore: cast_nullable_to_non_nullable
              as Fri,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Addschedule implements Addschedule {
  const _$Addschedule(
      {required this.id,
      required this.currentTime,
      required this.newTime,
      required this.day});

  @override
  final String id;
  @override
  final Schedule currentTime;
  @override
  final Fri newTime;
  @override
  final String day;

  @override
  String toString() {
    return 'ScheduleEvent.addShedule(id: $id, currentTime: $currentTime, newTime: $newTime, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Addschedule &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.newTime, newTime) || other.newTime == newTime) &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, currentTime, newTime, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddscheduleCopyWith<_$Addschedule> get copyWith =>
      __$$AddscheduleCopyWithImpl<_$Addschedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSchedule,
    required TResult Function(
            String id, Schedule currentTime, Fri newTime, String day)
        addShedule,
  }) {
    return addShedule(id, currentTime, newTime, day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSchedule,
    TResult? Function(String id, Schedule currentTime, Fri newTime, String day)?
        addShedule,
  }) {
    return addShedule?.call(id, currentTime, newTime, day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSchedule,
    TResult Function(String id, Schedule currentTime, Fri newTime, String day)?
        addShedule,
    required TResult orElse(),
  }) {
    if (addShedule != null) {
      return addShedule(id, currentTime, newTime, day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getschedule value) getSchedule,
    required TResult Function(Addschedule value) addShedule,
  }) {
    return addShedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getschedule value)? getSchedule,
    TResult? Function(Addschedule value)? addShedule,
  }) {
    return addShedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getschedule value)? getSchedule,
    TResult Function(Addschedule value)? addShedule,
    required TResult orElse(),
  }) {
    if (addShedule != null) {
      return addShedule(this);
    }
    return orElse();
  }
}

abstract class Addschedule implements ScheduleEvent {
  const factory Addschedule(
      {required final String id,
      required final Schedule currentTime,
      required final Fri newTime,
      required final String day}) = _$Addschedule;

  @override
  String get id;
  Schedule get currentTime;
  Fri get newTime;
  String get day;
  @override
  @JsonKey(ignore: true)
  _$$AddscheduleCopyWith<_$Addschedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleState {
  ApiResponse<ScheduleModel> get schedule => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleStateCopyWith<ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
  @useResult
  $Res call({ApiResponse<ScheduleModel> schedule});
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
  }) {
    return _then(_value.copyWith(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ApiResponse<ScheduleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleStateCopyWith<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  factory _$$_ScheduleStateCopyWith(
          _$_ScheduleState value, $Res Function(_$_ScheduleState) then) =
      __$$_ScheduleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<ScheduleModel> schedule});
}

/// @nodoc
class __$$_ScheduleStateCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$_ScheduleState>
    implements _$$_ScheduleStateCopyWith<$Res> {
  __$$_ScheduleStateCopyWithImpl(
      _$_ScheduleState _value, $Res Function(_$_ScheduleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
  }) {
    return _then(_$_ScheduleState(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ApiResponse<ScheduleModel>,
    ));
  }
}

/// @nodoc

class _$_ScheduleState implements _ScheduleState {
  const _$_ScheduleState({required this.schedule});

  @override
  final ApiResponse<ScheduleModel> schedule;

  @override
  String toString() {
    return 'ScheduleState(schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleState &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      __$$_ScheduleStateCopyWithImpl<_$_ScheduleState>(this, _$identity);
}

abstract class _ScheduleState implements ScheduleState {
  const factory _ScheduleState(
      {required final ApiResponse<ScheduleModel> schedule}) = _$_ScheduleState;

  @override
  ApiResponse<ScheduleModel> get schedule;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}
