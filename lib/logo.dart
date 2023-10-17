import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_provider/front.dart';

class MyLogo extends StatefulWidget {
  const MyLogo({super.key});
  @override
  State<MyLogo> createState() => _MyLogoState();
}
class _MyLogoState extends State<MyLogo> {

  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashTransition: SplashTransition.slideTransition,
      backgroundColor: Colors.black,
      animationDuration: Duration(seconds: 2),
    splash: Container(
        child:Image.asset("assets/images/ir.png ")        
        ),
        nextScreen: FrontPage(),
    );
  }
  }