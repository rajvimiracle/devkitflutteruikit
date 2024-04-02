
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppBarPage2 extends StatefulWidget {
  const AppBarPage2({super.key});

  @override
  State<AppBarPage2> createState() => _AppBarPage2State();
}

class _AppBarPage2State extends State<AppBarPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("App Bar 2 - Image Title",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("App Bar 2 - Image Title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

                  Text("This is the example of standart App Bar with image title",style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  SizedBox(height: 1.h,),
                  Container(
                    height: 8.h,
                    width: double.infinity,
                    color: Colors.blue.withOpacity(0.9),
                    child: Row(
                    /*  mainAxisAlignment: MainAxisAlignment.spaceBetween,*/
                      children: [
                        IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white,),),
                        Padding(
                          padding:  EdgeInsets.only(left: 20.w),
                          child: Row(
                            children: [
                              Image.asset("assets/icons/icon_curlybracket.png"),
                              SizedBox(width: 3.w,),
                              Text("Miracle Kit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp,color: Colors.black,letterSpacing: 1),),
                            ],
                          ),
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
