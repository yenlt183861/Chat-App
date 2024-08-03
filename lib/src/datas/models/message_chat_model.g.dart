// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageChatModelImpl _$$MessageChatModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageChatModelImpl(
      id: (json['id'] as num).toInt(),
      fullname: json['fullname'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$MessageChatModelImplToJson(
        _$MessageChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'email': instance.email,
    };
