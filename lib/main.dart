import 'package:bloc_project/views/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: RoutesNames.SplashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
// Swagger API URL
// https://server-development.traqfy.com/api-docs/#/Authentication/post_auth_otpverify