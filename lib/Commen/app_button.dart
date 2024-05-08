import 'package:assignments_1/Commen/app_colors.dart';
import 'package:assignments_1/Commen/app_text.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  final double? width;
  final String title;
  final Function callback;
  final Color bgColor;
  final Color textColor;
  final OutlineInputBorder;
   Widget? child;
   AppButton({
    super.key,
    this.width,
    required this.title,
    required this.callback,
    this.bgColor = AppColors.primaryColor,
    this.textColor = AppColors.white,
    this.child,
    this.OutlineInputBorder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        height: 50,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: bgColor,
        ),
        child: Center(
          child: AppText(
            title: title,
            size: 15,
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
