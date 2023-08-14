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
  int get skip => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int skip) getBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int skip)? getBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int skip)? getBooking,
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

  @JsonKey(ignore: true)
  $BookingEventCopyWith<BookingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
  @useResult
  $Res call({int skip});
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
  }) {
    return _then(_value.copyWith(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_getBookingCopyWith<$Res>
    implements $BookingEventCopyWith<$Res> {
  factory _$$_getBookingCopyWith(
          _$_getBooking value, $Res Function(_$_getBooking) then) =
      __$$_getBookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int skip});
}

/// @nodoc
class __$$_getBookingCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$_getBooking>
    implements _$$_getBookingCopyWith<$Res> {
  __$$_getBookingCopyWithImpl(
      _$_getBooking _value, $Res Function(_$_getBooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
  }) {
    return _then(_$_getBooking(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_getBooking implements _getBooking {
  const _$_getBooking({required this.skip});

  @override
  final int skip;

  @override
  String toString() {
    return 'BookingEvent.getBooking(skip: $skip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getBooking &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getBookingCopyWith<_$_getBooking> get copyWith =>
      __$$_getBookingCopyWithImpl<_$_getBooking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int skip) getBooking,
  }) {
    return getBooking(skip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int skip)? getBooking,
  }) {
    return getBooking?.call(skip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int skip)? getBooking,
    required TResult orElse(),
  }) {
    if (getBooking != null) {
      return getBooking(skip);
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
  const factory _getBooking({required final int skip}) = _$_getBooking;

  @override
  int get skip;
  @override
  @JsonKey(ignore: true)
  _$$_getBookingCopyWith<_$_getBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingState {
  ApiResponse<BookingModel> get bookings => throw _privateConstructorUsedError;
  List<Booking> get viewBooking => throw _privateConstructorUsedError;

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
  $Res call({ApiResponse<BookingModel> bookings, List<Booking> viewBooking});
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
    Object? viewBooking = null,
  }) {
    return _then(_value.copyWith(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingModel>,
      viewBooking: null == viewBooking
          ? _value.viewBooking
          : viewBooking // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
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
  $Res call({ApiResponse<BookingModel> bookings, List<Booking> viewBooking});
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
    Object? viewBooking = null,
  }) {
    return _then(_$_BookingState(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingModel>,
      viewBooking: null == viewBooking
          ? _value._viewBooking
          : viewBooking // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
    ));
  }
}

/// @nodoc

class _$_BookingState implements _BookingState {
  const _$_BookingState(
      {required this.bookings, required final List<Booking> viewBooking})
      : _viewBooking = viewBooking;

  @override
  final ApiResponse<BookingModel> bookings;
  final List<Booking> _viewBooking;
  @override
  List<Booking> get viewBooking {
    if (_viewBooking is EqualUnmodifiableListView) return _viewBooking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_viewBooking);
  }

  @override
  String toString() {
    return 'BookingState(bookings: $bookings, viewBooking: $viewBooking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingState &&
            (identical(other.bookings, bookings) ||
                other.bookings == bookings) &&
            const DeepCollectionEquality()
                .equals(other._viewBooking, _viewBooking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, bookings, const DeepCollectionEquality().hash(_viewBooking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      __$$_BookingStateCopyWithImpl<_$_BookingState>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {required final ApiResponse<BookingModel> bookings,
      required final List<Booking> viewBooking}) = _$_BookingState;

  @override
  ApiResponse<BookingModel> get bookings;
  @override
  List<Booking> get viewBooking;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
