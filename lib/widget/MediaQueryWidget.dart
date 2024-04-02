import 'package:devkitflutteruikit/Constants/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MediaQueryWidgetPage extends StatefulWidget {
  const MediaQueryWidgetPage({super.key});

  @override
  State<MediaQueryWidgetPage> createState() => _MediaQueryWidgetPageState();
}

class _MediaQueryWidgetPageState extends State<MediaQueryWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Media Query Widget",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 9.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Media Query Widget",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 1.h,),
              Text("Media Queary Widget used to get device information screen",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Device Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Text("Width :",style: TextStyle(fontSize: 10.sp),),
                  Text("360.0",style: TextStyle(fontSize: 10.sp),),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Text("Height :",style: TextStyle(fontSize: 10.sp),),
                  Text("640.0",style: TextStyle(fontSize: 10.sp),),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Text("Orientation :",style: TextStyle(fontSize: 10.sp),),
                  Text("Orientation.portrait",style: TextStyle(fontSize: 10.sp),),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Text("Brightness :",style: TextStyle(fontSize: 10.sp),),
                  Text("Brightness.light",style: TextStyle(fontSize: 10.sp),),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Text("System Padding :",style: TextStyle(fontSize: 10.sp),),
                  Text("Edgelnsets (0.0,24.0,0.0,0.0)",style: TextStyle(fontSize: 10.sp),),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Text("Device Pixel Ratio :",style: TextStyle(fontSize: 10.sp),),
                  Text("3.0",style: TextStyle(fontSize: 10.sp),),
                ],
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
