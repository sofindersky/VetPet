// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
mixin _$Pet {
  String get petName => throw _privateConstructorUsedError;
  String get petId => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  String get ownerFullName => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  PetType get type => throw _privateConstructorUsedError;
  String get petHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res, Pet>;
  @useResult
  $Res call(
      {String petName,
      String petId,
      int ownerId,
      String ownerFullName,
      DateTime birthday,
      PetType type,
      String petHistory});
}

/// @nodoc
class _$PetCopyWithImpl<$Res, $Val extends Pet> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petName = null,
    Object? petId = null,
    Object? ownerId = null,
    Object? ownerFullName = null,
    Object? birthday = null,
    Object? type = null,
    Object? petHistory = null,
  }) {
    return _then(_value.copyWith(
      petName: null == petName
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      petId: null == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerFullName: null == ownerFullName
          ? _value.ownerFullName
          : ownerFullName // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PetType,
      petHistory: null == petHistory
          ? _value.petHistory
          : petHistory // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetImplCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$$PetImplCopyWith(_$PetImpl value, $Res Function(_$PetImpl) then) =
      __$$PetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String petName,
      String petId,
      int ownerId,
      String ownerFullName,
      DateTime birthday,
      PetType type,
      String petHistory});
}

/// @nodoc
class __$$PetImplCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res, _$PetImpl>
    implements _$$PetImplCopyWith<$Res> {
  __$$PetImplCopyWithImpl(_$PetImpl _value, $Res Function(_$PetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petName = null,
    Object? petId = null,
    Object? ownerId = null,
    Object? ownerFullName = null,
    Object? birthday = null,
    Object? type = null,
    Object? petHistory = null,
  }) {
    return _then(_$PetImpl(
      petName: null == petName
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      petId: null == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerFullName: null == ownerFullName
          ? _value.ownerFullName
          : ownerFullName // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PetType,
      petHistory: null == petHistory
          ? _value.petHistory
          : petHistory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetImpl extends _Pet {
  const _$PetImpl(
      {required this.petName,
      required this.petId,
      this.ownerId = 0,
      this.ownerFullName = '',
      required this.birthday,
      required this.type,
      required this.petHistory})
      : super._();

  factory _$PetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetImplFromJson(json);

  @override
  final String petName;
  @override
  final String petId;
  @override
  @JsonKey()
  final int ownerId;
  @override
  @JsonKey()
  final String ownerFullName;
  @override
  final DateTime birthday;
  @override
  final PetType type;
  @override
  final String petHistory;

  @override
  String toString() {
    return 'Pet(petName: $petName, petId: $petId, ownerId: $ownerId, ownerFullName: $ownerFullName, birthday: $birthday, type: $type, petHistory: $petHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetImpl &&
            (identical(other.petName, petName) || other.petName == petName) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.ownerFullName, ownerFullName) ||
                other.ownerFullName == ownerFullName) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.petHistory, petHistory) ||
                other.petHistory == petHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, petName, petId, ownerId,
      ownerFullName, birthday, type, petHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetImplCopyWith<_$PetImpl> get copyWith =>
      __$$PetImplCopyWithImpl<_$PetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetImplToJson(
      this,
    );
  }
}

abstract class _Pet extends Pet {
  const factory _Pet(
      {required final String petName,
      required final String petId,
      final int ownerId,
      final String ownerFullName,
      required final DateTime birthday,
      required final PetType type,
      required final String petHistory}) = _$PetImpl;
  const _Pet._() : super._();

  factory _Pet.fromJson(Map<String, dynamic> json) = _$PetImpl.fromJson;

  @override
  String get petName;
  @override
  String get petId;
  @override
  int get ownerId;
  @override
  String get ownerFullName;
  @override
  DateTime get birthday;
  @override
  PetType get type;
  @override
  String get petHistory;
  @override
  @JsonKey(ignore: true)
  _$$PetImplCopyWith<_$PetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
