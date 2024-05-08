
import 'package:assignments_1/App/Boarding%20View/View%20Model/boarding_viewmodel.dart';
import 'package:assignments_1/Commen/app_assets.dart';
import 'package:assignments_1/Commen/app_button.dart';
import 'package:assignments_1/Commen/app_colors.dart';
import 'package:assignments_1/Commen/app_text.dart';
import 'package:assignments_1/Utils/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoarding1View extends StatelessWidget {
   OnBoarding1View({super.key});
    final onboardingVM = Get.find<BoardingViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
       automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
          ),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(AppAssets.OnBoarding1View,
                    fit: BoxFit.cover,),
                  ]    
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: AppText(title: "Connecting People",
              fontWeight: FontWeight.w700,
              size: 32,
              ),
            ),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(35,1,20,10),
                     child: AppText(title: "Engage your surroundings with one click one platform.",
                                   size: 17,isSoftWrap: true,color: AppColors.secondaryColor,
                                   ),
                   ),
                    SizedBox(height: 25,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primaryColor,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primaryColor.withOpacity(0.4),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primaryColor.withOpacity(0.4),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      AppButton(title: "Get Started",
                      width: 200,
                       callback: (){
                            Get.toNamed(AppRoutes.onBoarding2View);
                       }),
                         SizedBox(height: 1),
                      AppButton(title: "Skip",
                      width: 200,
                      bgColor: AppColors.white,
                      textColor: AppColors.primaryColor,
                       callback: (){
                       Get.toNamed(AppRoutes.LoginView);
                       })
                 ],
               ),
 
    );
  }
}