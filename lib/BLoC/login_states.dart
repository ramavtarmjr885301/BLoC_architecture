part of 'login_bloc.dart';
class LoginStates extends Equatable  {
  const LoginStates({
    this.email = '',
    this.password = '',
    this.isEmailValid = false,
    this.isPasswordValid = false,
    this.isSubmitting = false,
    this.isSuccess = false,
    this.isFailure = false,
  });
  final String email;
  final String password;
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;
  @override
  List<Object?> get props => [
        email,
        password,
        isEmailValid,
        isPasswordValid,
        isSubmitting,
        isSuccess,
        isFailure,
      ];
}