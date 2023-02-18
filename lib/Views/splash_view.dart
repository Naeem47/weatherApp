import 'package:apiflut/Constants/colors.dart';
import 'package:apiflut/Views/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return  Home();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundc,
      body: Center(
        child: LottieBuilder.asset('assets/lottie/2.json'),
      ),
    );
  }
}
