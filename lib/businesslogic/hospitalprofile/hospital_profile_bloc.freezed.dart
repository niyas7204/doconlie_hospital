// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospital_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HospitalProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHospitalProfile,
    required TResult Function(String name, String about, String address,
            String place, String mobile)
        editHospitalProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHospitalProfile,
    TResult? Function(String name, String about, String address, String place,
            String mobile)?
        editHospitalProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHospitalProfile,
    TResult Function(String name, String about, String address, String place,
            String mobile)?
        editHospitalProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalProfile value) getHospitalProfile,
    required TResult Function(_editHospitalProfile value) editHospitalProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalProfile value)? getHospitalProfile,
    TResult? Function(_editHospitalProfile value)? editHospitalProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalProfile value)? getHospitalProfile,
    TResult Function(_editHospitalProfile value)? editHospitalProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalProfileEventCopyWith<$Res> {
  factory $HospitalProfileEventCopyWith(HospitalProfileEvent value,
          $Res Function(HospitalProfileEvent) then) =
      _$HospitalProfileEventCopyWithImpl<$Res, HospitalProfileEvent>;
}

/// @nodoc
class _$HospitalProfileEventCopyWithImpl<$Res,
        $Val extends HospitalProfileEvent>
    implements $HospitalProfileEventCopyWith<$Res> {
  _$HospitalProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getHospitalProfileCopyWith<$Res> {
  factory _$$_getHospitalProfileCopyWith(_$_getHospitalProfile value,
          $Res Function(_$_getHospitalProfile) then) =
      __$$_getHospitalProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getHospitalProfileCopyWithImpl<$Res>
    extends _$HospitalProfileEventCopyWithImpl<$Res, _$_getHospitalProfile>
    implements _$$_getHospitalProfileCopyWith<$Res> {
  __$$_getHospitalProfileCopyWithImpl(
      _$_getHospitalProfile _value, $Res Function(_$_getHospitalProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getHospitalProfile implements _getHospitalProfile {
  const _$_getHospitalProfile();

  @override
  String toString() {
    return 'HospitalProfileEvent.getHospitalProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getHospitalProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHospitalProfile,
    required TResult Function(String name, String about, String address,
            String place, String mobile)
        editHospitalProfile,
  }) {
    return getHospitalProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHospitalProfile,
    TResult? Function(String name, String about, String address, String place,
            String mobile)?
        editHospitalProfile,
  }) {
    return getHospitalProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHospitalProfile,
    TResult Function(String name, String about, String address, String place,
            String mobile)?
        editHospitalProfile,
    required TResult orElse(),
  }) {
    if (getHospitalProfile != null) {
      return getHospitalProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalProfile value) getHospitalProfile,
    required TResult Function(_editHospitalProfile value) editHospitalProfile,
  }) {
    return getHospitalProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalProfile value)? getHospitalProfile,
    TResult? Function(_editHospitalProfile value)? editHospitalProfile,
  }) {
    return getHospitalProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalProfile value)? getHospitalProfile,
    TResult Function(_editHospitalProfile value)? editHospitalProfile,
    required TResult orElse(),
  }) {
    if (getHospitalProfile != null) {
      return getHospitalProfile(this);
    }
    return orElse();
  }
}

abstract class _getHospitalProfile implements HospitalProfileEvent {
  const factory _getHospitalProfile() = _$_getHospitalProfile;
}

/// @nodoc
abstract class _$$_editHospitalProfileCopyWith<$Res> {
  factory _$$_editHospitalProfileCopyWith(_$_editHospitalProfile value,
          $Res Function(_$_editHospitalProfile) then) =
      __$$_editHospitalProfileCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name, String about, String address, String place, String mobile});
}

/// @nodoc
class __$$_editHospitalProfileCopyWithImpl<$Res>
    extends _$HospitalProfileEventCopyWithImpl<$Res, _$_editHospitalProfile>
    implements _$$_editHospitalProfileCopyWith<$Res> {
  __$$_editHospitalProfileCopyWithImpl(_$_editHospitalProfile _value,
      $Res Function(_$_editHospitalProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? about = null,
    Object? address = null,
    Object? place = null,
    Object? mobile = null,
  }) {
    return _then(_$_editHospitalProfile(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_editHospitalProfile implements _editHospitalProfile {
  const _$_editHospitalProfile(
      {required this.name,
      required this.about,
      required this.address,
      required this.place,
      required this.mobile});

  @override
  final String name;
  @override
  final String about;
  @override
  final String address;
  @override
  final String place;
  @override
  final String mobile;

  @override
  String toString() {
    return 'HospitalProfileEvent.editHospitalProfile(name: $name, about: $about, address: $address, place: $place, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_editHospitalProfile &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, about, address, place, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_editHospitalProfileCopyWith<_$_editHospitalProfile> get copyWith =>
      __$$_editHospitalProfileCopyWithImpl<_$_editHospitalProfile>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHospitalProfile,
    required TResult Function(String name, String about, String address,
            String place, String mobile)
        editHospitalProfile,
  }) {
    return editHospitalProfile(name, about, address, place, mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHospitalProfile,
    TResult? Function(String name, String about, String address, String place,
            String mobile)?
        editHospitalProfile,
  }) {
    return editHospitalProfile?.call(name, about, address, place, mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHospitalProfile,
    TResult Function(String name, String about, String address, String place,
            String mobile)?
        editHospitalProfile,
    required TResult orElse(),
  }) {
    if (editHospitalProfile != null) {
      return editHospitalProfile(name, about, address, place, mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalProfile value) getHospitalProfile,
    required TResult Function(_editHospitalProfile value) editHospitalProfile,
  }) {
    return editHospitalProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalProfile value)? getHospitalProfile,
    TResult? Function(_editHospitalProfile value)? editHospitalProfile,
  }) {
    return editHospitalProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalProfile value)? getHospitalProfile,
    TResult Function(_editHospitalProfile value)? editHospitalProfile,
    required TResult orElse(),
  }) {
    if (editHospitalProfile != null) {
      return editHospitalProfile(this);
    }
    return orElse();
  }
}

abstract class _editHospitalProfile implements HospitalProfileEvent {
  const factory _editHospitalProfile(
      {required final String name,
      required final String about,
      required final String address,
      required final String place,
      required final String mobile}) = _$_editHospitalProfile;

  String get name;
  String get about;
  String get address;
  String get place;
  String get mobile;
  @JsonKey(ignore: true)
  _$$_editHospitalProfileCopyWith<_$_editHospitalProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HospitalProfileState {
  ApiResponse<HospitalProfileModel> get profile =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HospitalProfileStateCopyWith<HospitalProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalProfileStateCopyWith<$Res> {
  factory $HospitalProfileStateCopyWith(HospitalProfileState value,
          $Res Function(HospitalProfileState) then) =
      _$HospitalProfileStateCopyWithImpl<$Res, HospitalProfileState>;
  @useResult
  $Res call({ApiResponse<HospitalProfileModel> profile});
}

/// @nodoc
class _$HospitalProfileStateCopyWithImpl<$Res,
        $Val extends HospitalProfileState>
    implements $HospitalProfileStateCopyWith<$Res> {
  _$HospitalProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ApiResponse<HospitalProfileModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HospitalProfileStateCopyWith<$Res>
    implements $HospitalProfileStateCopyWith<$Res> {
  factory _$$_HospitalProfileStateCopyWith(_$_HospitalProfileState value,
          $Res Function(_$_HospitalProfileState) then) =
      __$$_HospitalProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<HospitalProfileModel> profile});
}

/// @nodoc
class __$$_HospitalProfileStateCopyWithImpl<$Res>
    extends _$HospitalProfileStateCopyWithImpl<$Res, _$_HospitalProfileState>
    implements _$$_HospitalProfileStateCopyWith<$Res> {
  __$$_HospitalProfileStateCopyWithImpl(_$_HospitalProfileState _value,
      $Res Function(_$_HospitalProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_HospitalProfileState(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ApiResponse<HospitalProfileModel>,
    ));
  }
}

/// @nodoc

class _$_HospitalProfileState implements _HospitalProfileState {
  const _$_HospitalProfileState({required this.profile});

  @override
  final ApiResponse<HospitalProfileModel> profile;

  @override
  String toString() {
    return 'HospitalProfileState(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HospitalProfileState &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HospitalProfileStateCopyWith<_$_HospitalProfileState> get copyWith =>
      __$$_HospitalProfileStateCopyWithImpl<_$_HospitalProfileState>(
          this, _$identity);
}

abstract class _HospitalProfileState implements HospitalProfileState {
  const factory _HospitalProfileState(
          {required final ApiResponse<HospitalProfileModel> profile}) =
      _$_HospitalProfileState;

  @override
  ApiResponse<HospitalProfileModel> get profile;
  @override
  @JsonKey(ignore: true)
  _$$_HospitalProfileStateCopyWith<_$_HospitalProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
