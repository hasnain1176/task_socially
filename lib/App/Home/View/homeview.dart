


import 'package:assignments_1/Commen/app_button.dart';

import 'package:assignments_1/Commen/app_colors.dart';
import 'package:assignments_1/Commen/app_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomeView extends StatefulWidget {
 HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin{
  late TabController _tabController;



  @override
  void initState(){
_tabController = TabController(length: 3, vsync: this, initialIndex:0);
_tabController.addListener(_handleTabSelection);
    super.initState();
    }
_handleTabSelection(){
  if(_tabController.indexIsChanging){
    setState(() {
      
    });
  }
}
@override
void dispose(){
  _tabController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.settings,
        color: AppColors.secondaryColor,)),
       actions: [
     IconButton(onPressed: (){}, icon: Icon(Icons.search,
     color: AppColors.secondaryColor,
     ),),
       ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(title: "Add Bio", color: AppColors.secondaryColor,)
                ],
              ),
            ),
            SizedBox(height: 12,),
        TabBar(
          controller: _tabController,
        labelColor: AppColors.primaryColor,
             unselectedLabelColor:AppColors.blackText,
            //  isScrollable: true,
             indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 3,
             color: AppColors.primaryColor,
             ),
             insets: EdgeInsets.symmetric(horizontal: 4),
             ),
          tabs: [
          Tab(
            icon: Icon(Icons.grid_view),
          ),
           Tab(
            icon: Icon(Icons.favorite),
          ),
           Tab(
            icon: Icon(Icons.person),
          ),
        ]
        ),
        SizedBox(height: 5,),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 3
        
        ), 
        itemCount: 9,
        itemBuilder:
         (context, index){
          return CachedNetworkImage(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMzJhKT7AuZ9fMpW4xedkl5i7P4XXY78E0kQrjO2UWjQ&s");
        })
             
          ],
          
        ),
      ),
      
      
    );
  }
}
