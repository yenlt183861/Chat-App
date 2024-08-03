// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_chat_model.freezed.dart';
part 'message_chat_model.g.dart';

@freezed
class MessageChatModel with _$MessageChatModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory MessageChatModel({
    required int id,
    required String fullname,
    required String email,
  }) = _MessageChatModel;

  const MessageChatModel._(); // required for writting method class

  factory MessageChatModel.fromJson(Map<String, Object?> json) => _$MessageChatModelFromJson(json);
}
