// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetImpl _$$PetImplFromJson(Map<String, dynamic> json) => _$PetImpl(
      petName: json['petName'] as String? ?? '',
      petId: json['petId'] as String? ?? '',
      ownerId: (json['ownerId'] as num?)?.toInt() ?? 0,
      ownerFullName: json['ownerFullName'] as String? ?? '',
      birthday: DateTime.parse(json['birthday'] as String),
      type: $enumDecode(_$PetTypeEnumMap, json['type']),
      petHistory: json['petHistory'] as String,
    );

Map<String, dynamic> _$$PetImplToJson(_$PetImpl instance) => <String, dynamic>{
      'petName': instance.petName,
      'petId': instance.petId,
      'ownerId': instance.ownerId,
      'ownerFullName': instance.ownerFullName,
      'birthday': instance.birthday.toIso8601String(),
      'type': _$PetTypeEnumMap[instance.type]!,
      'petHistory': instance.petHistory,
    };

const _$PetTypeEnumMap = {
  PetType.cat: 'cat',
  PetType.dog: 'dog',
  PetType.other: 'other',
};
