import 'package:flutter/material.dart';
import 'package:uniapp/onBoarding.dart';
import 'gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
        return const OnboardingScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontFamily: 'Vazir', fontWeight: FontWeight.w700, fontSize: 23);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Assets.image.splashIcon.image(),
            ),
            const Text(
              'یونی اپ',
              style: textStyle,),
          ],
        ),
      ),
    );
  }
}
