
import 'package:bloc_project/services/splash/splash_services.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   SplashServices _splashServices = SplashServices();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashServices.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:Text("Splash Screen", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), 
          
        ),
      ),
    );
  }
}
