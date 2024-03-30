import 'package:devkitflutteruikit/Constants/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PaddingOnContainerPage extends StatefulWidget {
  const PaddingOnContainerPage({super.key});

  @override
  State<PaddingOnContainerPage> createState() => _PaddingOnContainerPageState();
}

class _PaddingOnContainerPageState extends State<PaddingOnContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Padding  On Container",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 4.h,left: 5.w,right: 5.w,bottom: 4.h ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Padding On Container",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                    Text("This is the example of padding on contiainer using different method",style: TextStyle(color: Colors.black54),),
                    SizedBox(height: 2.h,),
                    Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                    SizedBox(height: 1.5.h,),
                    Text("Padding left",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                    SizedBox(height: 0.5.h,),
                    Container(
                      height: 3.h,
                      width: 55.w,
                      color: Colors.blueAccent,
                      padding: EdgeInsets.only(left: 4.w),
                      child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),

                    ),
                    SizedBox(height: 2.h,),
                    Text("Padding right",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                    SizedBox(height: 0.5.h,),
                    Container(
                      height: 3.h,
                      width: 55.w,
                      color: Colors.blueAccent,
                      padding: EdgeInsets.only(right: 4.w),
                      child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),

                    ),
                    SizedBox(height: 2.h,),
                    Text("Padding left and right with simetric",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                    SizedBox(height: 0.5.h,),
                    Container(
                      height: 3.h,
                      width: 55.w,
                      color: Colors.blueAccent,
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Padding all with same value",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                    SizedBox(height: 0.5.h,),
                    Container(
                      height: 5.h,
                      width: 55.w,
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(8),
                      child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Padding all with same different value",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                    SizedBox(height: 0.5.h,),
                    Container(
                      height: 10.h,
                      width: 60.w,
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(15),
                      child: Text("this text is inside container",style: TextStyle(color: Colors.white,fontSize: 12.sp),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
