part of 'login_bloc.dart';

class LoginStates extends Equatable {
  const LoginStates({
    this.email = '',
    this.password = '',
    this.postApiStatus=PostApiStatus.initial,
    this.error=''
  });
  final String email;
  final String password;
  final PostApiStatus postApiStatus;
  final String error;

  LoginStates copyWith({
    String? email,
    String? password,
    PostApiStatus? postApiStatus,
    String? error,
  }) {
    return LoginStates(
      email: email ?? this.email,
      password: password ?? this.password,
      postApiStatus: postApiStatus?? this.postApiStatus,
      error: error??this.error
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        postApiStatus,
        error
      ];
}
