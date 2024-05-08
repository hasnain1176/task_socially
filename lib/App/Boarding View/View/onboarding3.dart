
import 'package:assignments_1/App/Boarding%20View/View%20Model/boarding_viewmodel.dart';
import 'package:assignments_1/Commen/app_assets.dart';
import 'package:assignments_1/Commen/app_button.dart';
import 'package:assignments_1/Commen/app_colors.dart';
import 'package:assignments_1/Commen/app_text.dart';
import 'package:assignments_1/Utils/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoarding3View extends StatelessWidget {
   OnBoarding3View({super.key});
  final onboardingVM = Get.find<BoardingViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor: AppColors.white,
          ),
        body: Column(
          children: [
            Center(
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(AppAssets.OnBoarding3View,
                    fit: BoxFit.cover,),
                  ]    
                ),
              ),
            ),
           SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: AppText(title: "Together Collaborating",
              fontWeight: FontWeight.w700,
              size: 30,
              ),
            ),
SizedBox(height: 9),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(35,1,20,10),
                     child: AppText(title: "Join our team, together we conquer\n the world.",
                                   size: 17,isSoftWrap: true,color: AppColors.secondaryColor,
                                   ),
                   ),
                    SizedBox(height: 57,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          ),
                          const SizedBox(width: 12),
                          Container(
                            height: 10,
                            width: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primaryColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      AppButton(title: "Next",
                      width: 200,
                       callback: (){
                       Get.offAllNamed(AppRoutes.LoginView);
                       }),
                      
                 ],
               ),
 
    );
  }
}