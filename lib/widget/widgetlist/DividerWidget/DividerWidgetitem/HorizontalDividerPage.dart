import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../Constants/ImagePath.dart';

class HorizontalDividerPage extends StatefulWidget {
  const HorizontalDividerPage({super.key});

  @override
  State<HorizontalDividerPage> createState() => _HorizontalDividerPageState();
}

class _HorizontalDividerPageState extends State<HorizontalDividerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Horizontal Divider",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w,bottom: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Horizontal Divider",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

              Text("This is the example of Horizontal Divider",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 2.h,),
              Text("Menu 1",style: TextStyle(fontSize: 12.sp,),),
              Divider(color: Colors.grey,),
            /*  SizedBox(height: 1.h,),*/
              Text("Menu 2",style: TextStyle(fontSize: 12.sp,),),
              Divider(color: Colors.grey,thickness: 2.w,),
              Text("Menu 3",style: TextStyle(fontSize: 12.sp,),),
              SizedBox(height: 1.h,),
              Divider(color: Colors.grey,),
              SizedBox(height: 1.h,),
              Text("Menu 4",style: TextStyle(fontSize: 12.sp,),),

              Divider(color: Colors.pink,),
              Text("Menu 5",style: TextStyle(fontSize: 12.sp,),),

              Padding(
                padding:  EdgeInsets.only(left: 9.w),
                child: Divider(color: Colors.pink,),
              ),
              Text("Menu 6",style: TextStyle(fontSize: 12.sp,),),

              Padding(
                padding:  EdgeInsets.only(right: 9.w),
                child: Divider(color: Colors.pink,),
              ),
              Text("Menu 7",style: TextStyle(fontSize: 12.sp,),),

              Padding(
                padding:  EdgeInsets.only(right: 12.w,left: 12.w),
                child: Divider(color: Colors.pink,),
              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
