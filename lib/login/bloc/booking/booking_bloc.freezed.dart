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
    required TResult Function(int present, int perpage,
            List<Booking> originallist, List<Booking> loadedlist)
        loadmore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooking,
    TResult? Function(int present, int perpage, List<Booking> originallist,
            List<Booking> loadedlist)?
        loadmore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooking,
    TResult Function(int present, int perpage, List<Booking> originallist,
            List<Booking> loadedlist)?
        loadmore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getBooking value) getBooking,
    required TResult Function(_loadMore value) loadmore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBooking value)? getBooking,
    TResult? Function(_loadMore value)? loadmore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBooking value)? getBooking,
    TResult Function(_loadMore value)? loadmore,
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
    required TResult Function(int present, int perpage,
            List<Booking> originallist, List<Booking> loadedlist)
        loadmore,
  }) {
    return getBooking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooking,
    TResult? Function(int present, int perpage, List<Booking> originallist,
            List<Booking> loadedlist)?
        loadmore,
  }) {
    return getBooking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooking,
    TResult Function(int present, int perpage, List<Booking> originallist,
            List<Booking> loadedlist)?
        loadmore,
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
    required TResult Function(_loadMore value) loadmore,
  }) {
    return getBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBooking value)? getBooking,
    TResult? Function(_loadMore value)? loadmore,
  }) {
    return getBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBooking value)? getBooking,
    TResult Function(_loadMore value)? loadmore,
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
abstract class _$$_loadMoreCopyWith<$Res> {
  factory _$$_loadMoreCopyWith(
          _$_loadMore value, $Res Function(_$_loadMore) then) =
      __$$_loadMoreCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int present,
      int perpage,
      List<Booking> originallist,
      List<Booking> loadedlist});
}

/// @nodoc
class __$$_loadMoreCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$_loadMore>
    implements _$$_loadMoreCopyWith<$Res> {
  __$$_loadMoreCopyWithImpl(
      _$_loadMore _value, $Res Function(_$_loadMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? present = null,
    Object? perpage = null,
    Object? originallist = null,
    Object? loadedlist = null,
  }) {
    return _then(_$_loadMore(
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as int,
      perpage: null == perpage
          ? _value.perpage
          : perpage // ignore: cast_nullable_to_non_nullable
              as int,
      originallist: null == originallist
          ? _value._originallist
          : originallist // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      loadedlist: null == loadedlist
          ? _value._loadedlist
          : loadedlist // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
    ));
  }
}

/// @nodoc

class _$_loadMore implements _loadMore {
  const _$_loadMore(
      {required this.present,
      required this.perpage,
      required final List<Booking> originallist,
      required final List<Booking> loadedlist})
      : _originallist = originallist,
        _loadedlist = loadedlist;

  @override
  final int present;
  @override
  final int perpage;
  final List<Booking> _originallist;
  @override
  List<Booking> get originallist {
    if (_originallist is EqualUnmodifiableListView) return _originallist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originallist);
  }

  final List<Booking> _loadedlist;
  @override
  List<Booking> get loadedlist {
    if (_loadedlist is EqualUnmodifiableListView) return _loadedlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadedlist);
  }

  @override
  String toString() {
    return 'BookingEvent.loadmore(present: $present, perpage: $perpage, originallist: $originallist, loadedlist: $loadedlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loadMore &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.perpage, perpage) || other.perpage == perpage) &&
            const DeepCollectionEquality()
                .equals(other._originallist, _originallist) &&
            const DeepCollectionEquality()
                .equals(other._loadedlist, _loadedlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      present,
      perpage,
      const DeepCollectionEquality().hash(_originallist),
      const DeepCollectionEquality().hash(_loadedlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadMoreCopyWith<_$_loadMore> get copyWith =>
      __$$_loadMoreCopyWithImpl<_$_loadMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooking,
    required TResult Function(int present, int perpage,
            List<Booking> originallist, List<Booking> loadedlist)
        loadmore,
  }) {
    return loadmore(present, perpage, originallist, loadedlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooking,
    TResult? Function(int present, int perpage, List<Booking> originallist,
            List<Booking> loadedlist)?
        loadmore,
  }) {
    return loadmore?.call(present, perpage, originallist, loadedlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooking,
    TResult Function(int present, int perpage, List<Booking> originallist,
            List<Booking> loadedlist)?
        loadmore,
    required TResult orElse(),
  }) {
    if (loadmore != null) {
      return loadmore(present, perpage, originallist, loadedlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getBooking value) getBooking,
    required TResult Function(_loadMore value) loadmore,
  }) {
    return loadmore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBooking value)? getBooking,
    TResult? Function(_loadMore value)? loadmore,
  }) {
    return loadmore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBooking value)? getBooking,
    TResult Function(_loadMore value)? loadmore,
    required TResult orElse(),
  }) {
    if (loadmore != null) {
      return loadmore(this);
    }
    return orElse();
  }
}

abstract class _loadMore implements BookingEvent {
  const factory _loadMore(
      {required final int present,
      required final int perpage,
      required final List<Booking> originallist,
      required final List<Booking> loadedlist}) = _$_loadMore;

  int get present;
  int get perpage;
  List<Booking> get originallist;
  List<Booking> get loadedlist;
  @JsonKey(ignore: true)
  _$$_loadMoreCopyWith<_$_loadMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingState {
  ApiResponse<BookingModel> get bookings => throw _privateConstructorUsedError;
  List<Booking> get viewBooking => throw _privateConstructorUsedError;
  int get present => throw _privateConstructorUsedError;
  int get perpage => throw _privateConstructorUsedError;

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
  $Res call(
      {ApiResponse<BookingModel> bookings,
      List<Booking> viewBooking,
      int present,
      int perpage});
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
    Object? present = null,
    Object? perpage = null,
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
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as int,
      perpage: null == perpage
          ? _value.perpage
          : perpage // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {ApiResponse<BookingModel> bookings,
      List<Booking> viewBooking,
      int present,
      int perpage});
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
    Object? present = null,
    Object? perpage = null,
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
      present: null == present
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as int,
      perpage: null == perpage
          ? _value.perpage
          : perpage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BookingState implements _BookingState {
  const _$_BookingState(
      {required this.bookings,
      required final List<Booking> viewBooking,
      required this.present,
      required this.perpage})
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
  final int present;
  @override
  final int perpage;

  @override
  String toString() {
    return 'BookingState(bookings: $bookings, viewBooking: $viewBooking, present: $present, perpage: $perpage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingState &&
            (identical(other.bookings, bookings) ||
                other.bookings == bookings) &&
            const DeepCollectionEquality()
                .equals(other._viewBooking, _viewBooking) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.perpage, perpage) || other.perpage == perpage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookings,
      const DeepCollectionEquality().hash(_viewBooking), present, perpage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      __$$_BookingStateCopyWithImpl<_$_BookingState>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {required final ApiResponse<BookingModel> bookings,
      required final List<Booking> viewBooking,
      required final int present,
      required final int perpage}) = _$_BookingState;

  @override
  ApiResponse<BookingModel> get bookings;
  @override
  List<Booking> get viewBooking;
  @override
  int get present;
  @override
  int get perpage;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
