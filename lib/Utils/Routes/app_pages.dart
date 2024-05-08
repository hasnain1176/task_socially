
import 'package:assignments_1/App/Auth/View%20Model/login_viewmodel.dart';
import 'package:assignments_1/App/Auth/View%20Model/register_viewmodel.dart';
import 'package:assignments_1/App/Auth/View%20Model/splash_viewmodel.dart';
import 'package:assignments_1/App/Auth/View/loginview.dart';
import 'package:assignments_1/App/Auth/View/register_view.dart';
import 'package:assignments_1/App/Auth/View/splash_view.dart';
import 'package:assignments_1/App/Boarding%20View/View%20Model/boarding_viewmodel.dart';
import 'package:assignments_1/App/Boarding%20View/View/onboarding1.dart';
import 'package:assignments_1/App/Boarding%20View/View/onboarding2.dart';
import 'package:assignments_1/App/Boarding%20View/View/onboarding3.dart';
import 'package:assignments_1/App/Home/View%20Model/home_viewmodel.dart';
import 'package:assignments_1/App/Home/View/homeview.dart';
import 'package:assignments_1/Utils/Routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splashView,
      page: () => SplashView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<SplashViewModel>(
          () => SplashViewModel(),
        );
      }),
    ),
     GetPage(
      name: AppRoutes.onBoarding1View,
      page: () => OnBoarding1View(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<BoardingViewModel>(
          () => BoardingViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.onBoarding2View,
      page: () => OnBoarding2View(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<LoginViewModel>(
          () => LoginViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.onBoarding3View,
      page: () => OnBoarding3View(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<BoardingViewModel>(
          () => BoardingViewModel(),
        );
      }),
    ),
     GetPage(
      name: AppRoutes.LoginView,
      page: () => LoginView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<LoginViewModel>(
          () => LoginViewModel(),
        );
      }),
    ),
       GetPage(
      name: AppRoutes.RegisterView,
      page: () => RegisterView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<RegisterViewModel>(
          () => RegisterViewModel(),
        );
      }),
    ),
     GetPage(
      name: AppRoutes.HomeView,
      page: () => HomeView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeViewModel>(
          () => HomeViewModel(),
        );
      }),
    ),
    ];}