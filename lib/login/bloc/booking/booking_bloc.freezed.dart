// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getBooking value) getBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBooking value)? getBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBooking value)? getBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getBookingCopyWith<$Res> {
  factory _$$_getBookingCopyWith(
          _$_getBooking value, $Res Function(_$_getBooking) then) =
      __$$_getBookingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getBookingCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$_getBooking>
    implements _$$_getBookingCopyWith<$Res> {
  __$$_getBookingCopyWithImpl(
      _$_getBooking _value, $Res Function(_$_getBooking) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getBooking implements _getBooking {
  const _$_getBooking();

  @override
  String toString() {
    return 'BookingEvent.getBooking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getBooking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooking,
  }) {
    return getBooking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooking,
  }) {
    return getBooking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooking,
    required TResult orElse(),
  }) {
    if (getBooking != null) {
      return getBooking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getBooking value) getBooking,
  }) {
    return getBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBooking value)? getBooking,
  }) {
    return getBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBooking value)? getBooking,
    required TResult orElse(),
  }) {
    if (getBooking != null) {
      return getBooking(this);
    }
    return orElse();
  }
}

abstract class _getBooking implements BookingEvent {
  const factory _getBooking() = _$_getBooking;
}

/// @nodoc
mixin _$BookingState {
  ApiResponse<BookingModel> get bookings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
  @useResult
  $Res call({ApiResponse<BookingModel> bookings});
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
  }) {
    return _then(_value.copyWith(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookingStateCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$_BookingStateCopyWith(
          _$_BookingState value, $Res Function(_$_BookingState) then) =
      __$$_BookingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<BookingModel> bookings});
}

/// @nodoc
class __$$_BookingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_BookingState>
    implements _$$_BookingStateCopyWith<$Res> {
  __$$_BookingStateCopyWithImpl(
      _$_BookingState _value, $Res Function(_$_BookingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
  }) {
    return _then(_$_BookingState(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingModel>,
    ));
  }
}

/// @nodoc

class _$_BookingState implements _BookingState {
  const _$_BookingState({required this.bookings});

  @override
  final ApiResponse<BookingModel> bookings;

  @override
  String toString() {
    return 'BookingState(bookings: $bookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingState &&
            (identical(other.bookings, bookings) ||
                other.bookings == bookings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      __$$_BookingStateCopyWithImpl<_$_BookingState>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {required final ApiResponse<BookingModel> bookings}) = _$_BookingState;

  @override
  ApiResponse<BookingModel> get bookings;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
