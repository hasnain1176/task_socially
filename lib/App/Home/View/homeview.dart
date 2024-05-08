

import 'package:assignments_1/App/Home/View%20Model/home_viewmodel.dart';
import 'package:assignments_1/Commen/app_button.dart';

import 'package:assignments_1/Commen/app_colors.dart';
import 'package:assignments_1/Commen/app_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeView extends StatelessWidget {
 HomeView({super.key});

final HomeVM = Get.find<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
       actions: [
     IconButton(onPressed: (){}, icon: Icon(Icons.search,
     color: AppColors.secondaryColor,
     ),),
       ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
       ClipOval(
      child: CachedNetworkImage(
        imageUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMzJhKT7AuZ9fMpW4xedkl5i7P4XXY78E0kQrjO2UWjQ&s" ,
        fit: BoxFit.contain,
        height: 100,
        width: 100,
        placeholder: (context, Url) => CircularProgressIndicator(),
        errorWidget: (context,Url, Error)=> Icon(Icons.error),
        ),
            ),
            ],
    
          ),
          SizedBox(height: 20,
          width: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 60,),
            AppText(title: "0", size: 20, fontWeight: FontWeight.w700,),
            SizedBox(height: 5,),
              AppText(title: "Post", size: 15, fontWeight: FontWeight.w500,),
                ],
              ),
              SizedBox(height: 10,
              width: 10,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            AppText(title: "0", size: 20, fontWeight: FontWeight.w700,),
            SizedBox(height: 5,),
              AppText(title: "Followers", size: 15, fontWeight: FontWeight.w500,),
                ],
              ),
              SizedBox(height: 10,
              width: 10),
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
            AppText(title: "0", size: 20, fontWeight: FontWeight.w700,),
            SizedBox(height: 5,),
              AppText(title: "Following", size: 15, fontWeight: FontWeight.w500,),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                     AppButton(title: "Follow", width: 140, callback: (){}),
                     const Spacer(),
            AppButton(title: "Message",
            bgColor: const Color.fromARGB(255, 238, 230, 230),
            textColor: AppColors.blackText,
            // OutlineInputBorder: ,
             width: 140, callback: (){}),
            ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(title: "Add Bio", color: AppColors.secondaryColor,)
            ],
          ),
          // GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
          // // (crossAxisCount: 2), itemBuilder: )
     
        ],
        
      ),
      
      
    );
  }
}
