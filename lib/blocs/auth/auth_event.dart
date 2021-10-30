part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class CheckEmailExisted extends AuthEvent {
  final String email;
  final Function(bool) onSuccess;
  final Function(String) onError;
  CheckEmailExisted(
      {required this.email, required this.onError, required this.onSuccess});
}

class Login extends AuthEvent {
  final String email;
  final String password;
  final VoidCallback onSuccess;
  final Function(String) onError;
  Login(
      {required this.email,
      required this.password,
      required this.onError,
      required this.onSuccess});
}

class SignUp extends AuthEvent {
  final String email;
  final String password;
  final String fullName;
  final VoidCallback onSuccess;
  final Function(String) onError;
  SignUp({
    required this.email,
    required this.password,
    required this.fullName,
    required this.onError,
    required this.onSuccess,
  });
}
