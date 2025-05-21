import 'package:bloc_project/views/view.dart';

class SplashServices {
  void isLogin(BuildContext context){
    Timer(const Duration(seconds: 3), () =>Navigator.pushNamedAndRemoveUntil(context, RoutesNames.loginScreen, (route) => false));
    
  }
}