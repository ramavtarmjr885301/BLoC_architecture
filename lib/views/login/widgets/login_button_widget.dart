import 'package:bloc_project/BLoC/login_bloc.dart';
import 'package:bloc_project/views/view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginButtonWidget extends StatefulWidget {
  final loginKey;
  const LoginButtonWidget({super.key, required this.loginKey});

  @override
  State<LoginButtonWidget> createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  void login() {
    if (widget.loginKey.currentState!.validate()) {
      Navigator.pushNamed(context, RoutesNames.homeScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
        buildWhen: (current, previous) => false,
        builder: (context, State) {
          print("Button Build");
          return ElevatedButton(
            onPressed: () {
              login();
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blueAccent,
            ),
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
          );
        });
  }
}
