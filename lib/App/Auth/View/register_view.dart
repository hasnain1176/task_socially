
import 'package:assignments_1/App/Auth/View%20Model/register_viewmodel.dart';
import 'package:assignments_1/Commen/app_assets.dart';
import 'package:assignments_1/Commen/app_button.dart';
import 'package:assignments_1/Commen/app_colors.dart';
import 'package:assignments_1/Commen/app_text.dart';
import 'package:assignments_1/Commen/app_textfield.dart';
import 'package:assignments_1/Utils/Routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class RegisterView extends StatelessWidget {
  RegisterView({super.key});

final registerVM = Get.find<RegisterViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppColors.white,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Image.asset(AppAssets.splashView, width: 90,)
              ],
            ) ,
            ), 
            SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              AppText(title:
               "Hello! Create Account",
                size: 24,
                 fontWeight: FontWeight.w700,
                 color: AppColors.blackText,),
            ],),
             SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: "Already have an Account?",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    )
                  ),
                  TextSpan(
                    text: " Sign In",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )
                  )
                ])
              )
            ],),
           
            Padding(  
               padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
                        children: [
                          SizedBox(height: 20,),
                          AppTextFromField(
                       hintText: "Fullname",
                      controller: registerVM.regFullName.value,
                    ),
                    const SizedBox(height: 15),
                    AppTextFromField(
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      controller: registerVM.regEmail.value,
                    ),
                    const SizedBox(height: 15),
                    AppTextFromField(
                      hintText: "Password",
                      keyboardType: TextInputType.emailAddress,
                      controller: registerVM.regPassword.value,
                      isPassword: true,
                    ),
                    const SizedBox(height: 15),
                    AppTextFromField(
                      hintText: "Confirm Password",
                      keyboardType: TextInputType.emailAddress,
                      controller: registerVM.regConfirmPassword.value,
                      isPassword: true,
                    ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    AppButton(
                      title: "Sign Up",
                      width: 300,
                      callback: () {
                        Get.offAllNamed(AppRoutes.HomeView);
                      },
                    ),
                     const SizedBox(height: 22),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By clicking Sign Up, I agree',
                        style: GoogleFonts.poppins(
                          color: AppColors.blackText,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: ' Terms & Conditions',
                            style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' \nand ',
                            style: GoogleFonts.poppins(
                              color: AppColors.blackText,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' Privacy Policy',
                            style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
               
                        ],
                      ),
                    )
          );
           
    
  }
}