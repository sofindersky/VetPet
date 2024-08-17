// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      fullName: json['fullName'] as String,
      ownerId: (json['ownerId'] as num).toInt(),
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'ownerId': instance.ownerId,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };
