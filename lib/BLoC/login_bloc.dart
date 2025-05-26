import 'package:bloc/bloc.dart';
import 'package:bloc_project/Repository/auth/login_repository.dart';
import 'package:bloc_project/Utils/enums.dart';
import 'package:bloc_project/views/login/widgets/login_button_widget.dart';
import 'package:equatable/equatable.dart';
part 'login_event.dart';
part 'login_states.dart';


class LoginBloc extends Bloc<LoginEvents, LoginStates>{
  LoginRepository loginRepository=LoginRepository();
  LoginBloc():super(const LoginStates()){
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    // on<LoginApi>(_loginApi);
  }
  void _onEmailChanged(EmailChanged event, Emitter<LoginStates>emit){
    print(event.email);
    emit(
      state.copyWith(
        email: event.email,
      )
    );
  }
  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates>emit){
    emit(
      state.copyWith(
        password: event.password,
      )
    );
  }
  void _loginApi(LoginButtonWidget event, Emitter<LoginStates>emit){
    emit(
      state.copyWith(
       
      )
    );
  }
}




























// class LoginBloc extends Bloc<LoginEvents, LoginStates> {
//   LoginBloc() : super(const LoginStates()) {
//     on<EmailChanged>(_onEmailChanged);
//     on<PasswordChanged>(_onPasswordChanged);
//     on<LoginButton>(_onLoginButtonPressed);
//   }
//   void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) {
//     emit(state.copyWith(email: event.email));
//   }
//   void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) {
//     emit(state.copyWith(password: event.password));
//   }
//   void _onLoginButtonPressed(LoginButton event, Emitter<LoginStates> emit) {
//     // Handle login button pressed
//   }
// }