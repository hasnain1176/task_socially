import 'package:assignments_1/App/Auth/View%20Model/login_viewmodel.dart';
import 'package:assignments_1/Commen/app_assets.dart';
import 'package:assignments_1/Commen/app_button.dart';
import 'package:assignments_1/Commen/app_colors.dart';
import 'package:assignments_1/Commen/app_text.dart';
import 'package:assignments_1/Commen/app_textfield.dart';
import 'package:assignments_1/Utils/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final loginVM = Get.find<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
               "Welcome Back",
                size: 24,
                 fontWeight: FontWeight.w700,
                 color: AppColors.blackText,),
            ],),
             SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              AppText(title:
               "Sign in to Counite!",
                size: 16,
                 fontWeight: FontWeight.w400,
                 color: AppColors.secondaryColor),
            ],),
            SizedBox(height: 1,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.RegisterView);
                },
                child: 
                AppText(title:
                 "Or Create an account?",
                  size: 16,
                   fontWeight: FontWeight.w500,
                   color: AppColors.primaryColor),
              ),
            ],
            ),
            Padding(  
               padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 17),
                    Form(
                      key: loginVM.formkey,
                      child: Column(
                        children: [
                          AppTextFromField(
                            hintText: "Email",
                            keyboardType: TextInputType.emailAddress,
                            controller: loginVM.loginEmail.value,
                            isEmailField: true,
                          ),
                          const SizedBox(height: 15),
                          AppTextFromField(
                            hintText: "Password",
                            keyboardType: TextInputType.emailAddress,
                            isPassword: true,
                            
                            controller: loginVM.loginPassword.value,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    AppButton(
                      title: "Sign In",
                      width: 300,
                      callback: () {
                      Get.offAllNamed(AppRoutes.HomeView);
                      },
                    ),
                    const SizedBox(height: 10),
                     const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppText(
                          title: "Forgot password?",
                          size: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1.5,
                          width: context.mediaQuerySize.width * 0.35,
                          color: const Color.fromARGB(255, 196, 197, 188),
                        ),
                        const AppText(
                          title: "OR",
                          size: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackText,
                        ),
                        Container(
                          height: 1.5,
                          width: context.mediaQuerySize.width * 0.35,
                          color: const Color.fromARGB(255, 196, 197, 188),
                        ),
                      ],
                    ),
                  const SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.primaryColor,
                        border: Border.all(
                          color: AppColors.white,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.googleIcon,
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 8),
                          const AppText(
                          color: AppColors.white,
                            title: "Continue With Google",
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.primaryColor,
                        border: Border.all(
                          color: AppColors.white,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.facebookIcon,
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 8),
                          const AppText(
                            color: AppColors.white,
                            title: "Continue With Facebook",
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
          ],),)
           
          ],
        ),
      ),
      //  Container(
      //   alignment: Alignment.topCenter,
      //   child: 
      //         Column(
      //               children: [
      //                 Image.asset(AppAssets.splashView,fit: BoxFit.cover, width: 100,)
      //               ],
                  
      //              ),
      //            ),        
    );
  }
}