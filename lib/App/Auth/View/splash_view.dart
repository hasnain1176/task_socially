import 'package:assignments_1/App/Auth/View%20Model/splash_viewmodel.dart';
import 'package:assignments_1/Commen/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
   SplashView({super.key});
  
  final splahVM = Get.find<SplashViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 235, 235),
     body: SizedBox(
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.splashView,
            fit: BoxFit.cover,
            width: 120,)
          ],
        ),
      ),
     )

    );
  }
}