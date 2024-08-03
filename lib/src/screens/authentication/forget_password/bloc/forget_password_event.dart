part of 'forget_password_bloc.dart';

abstract class ForgetPasswordEvent extends Equatable {}

class SelectContactEvent extends ForgetPasswordEvent {
  final VerificationMethod method;
  SelectContactEvent({required this.method});
  @override
  List<Object?> get props => [method];
}

class ChangeContactInfoEvent extends ForgetPasswordEvent {
  final String? contact;
  ChangeContactInfoEvent(this.contact);
  @override
  List<Object?> get props => [contact];
}

class SendCodeEvent extends ForgetPasswordEvent {
  @override
  List<Object?> get props => [];
}

class SetVerificationCodeForgetPasswordEvent extends ForgetPasswordEvent {
  final String code;
  SetVerificationCodeForgetPasswordEvent({this.code = ''});
  @override
  List<Object?> get props => [code];
}

class VerifyCodeEvent extends ForgetPasswordEvent {
  @override
  List<Object?> get props => [];
}
