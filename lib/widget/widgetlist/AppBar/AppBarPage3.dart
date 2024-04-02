
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppBarPage3 extends StatefulWidget {
  const AppBarPage3({super.key});

  @override
  State<AppBarPage3> createState() => _AppBarPage3State();
}

class _AppBarPage3State extends State<AppBarPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("App Bar 3 - Icon",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset("assets/images/img_bgImage.png",fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("App Bar 3 - Icon ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

              Text("This is the example of standart App Bar with icon",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 1.h,),
              Container(
                height: 8.h,
                width: double.infinity,
                color: Colors.blue.withOpacity(0.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white,),),
                     Text("Title",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15.sp,color: Colors.white),),
                    Row(
                      children: [
                        IconButton(onPressed: () => Get.back(), icon: Icon(Icons.favorite,size: 3.h,color: Colors.red,),),
                        IconButton(onPressed: () => Get.back(), icon: Icon(Icons.help,size: 3.h,color: Colors.black,),),
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
