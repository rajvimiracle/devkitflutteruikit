import 'package:devkitflutteruikit/Constants/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MarginOnContainerPage extends StatefulWidget {
  const MarginOnContainerPage({super.key});

  @override
  State<MarginOnContainerPage> createState() => _MarginOnContainerPageState();
}

class _MarginOnContainerPageState extends State<MarginOnContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Margin On Container",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
          Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 4.h,left: 5.w,right: 5.w,bottom: 4.h ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Margin On Container",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              Text("This is the example of margin on contiainer using different method",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 1.5.h,),
              Text("Margin left",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
              SizedBox(height: 0.5.h,),
              Container(
                height: 3.h,
                width: 50.w,
                color: Colors.blueAccent,
                margin: EdgeInsets.only(left: 4.w),
                child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),

              ),
              SizedBox(height: 2.h,),
              Text("Margin right",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
              SizedBox(height: 0.5.h,),
              Container(
                height: 3.h,
                width: 50.w,
                color: Colors.blueAccent,
                margin: EdgeInsets.only(right: 4.w),
                child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),

              ),
              SizedBox(height: 2.h,),
              Text("Margin left and right with simetric",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
              SizedBox(height: 0.5.h,),
              Container(
                height: 3.h,
                width: 50.w,
                color: Colors.blueAccent,
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),
              ),
              SizedBox(height: 2.h,),
              Text("Margin all with same value",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
              SizedBox(height: 0.5.h,),
              Container(
                height: 3.h,
                width: 50.w,
                color: Colors.blueAccent,
                margin: EdgeInsets.all(8),
                child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),
              ),
              SizedBox(height: 2.h,),
              Text("Margin all with same different value",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
              SizedBox(height: 0.5.h,),
              Container(
                height: 3.h,
                width: 50.w,
                color: Colors.blueAccent,
                margin: EdgeInsets.all(15),
                child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),
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
