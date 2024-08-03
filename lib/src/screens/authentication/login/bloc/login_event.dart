part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {}

class SubmitLoginForm extends LoginEvent {
  final String email;
  final String password;

  SubmitLoginForm({
    required this.email,
    required this.password,
  });
  @override
  List<Object?> get props => [email, password];
}
