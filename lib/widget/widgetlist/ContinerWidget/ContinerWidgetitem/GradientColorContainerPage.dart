import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../Constants/ImagePath.dart';

class GradientColorContainerPage extends StatefulWidget {
  const GradientColorContainerPage({super.key});

  @override
  State<GradientColorContainerPage> createState() => _GradientColorContainerPageState();
}

class _GradientColorContainerPageState extends State<GradientColorContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Gradient Color Container",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
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
                Text("Gradient Color Container",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                Text("This is the example of gradient on contiainer using different method",style: TextStyle(color: Colors.black54),),
                SizedBox(height: 2.h,),
                Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                SizedBox(height: 2.h,),
                Text("Linear Gradient",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 9.sp),),
                SizedBox(height: 0.5.h),
                Container(
                  height: 9.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                       /* Colors.lightBlue,*/
                        Colors.blue,
                      ]
                    )
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("Linear Gradient from top left into bottom right",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 9.sp),),
                SizedBox(height: 0.5.h),
                Container(
                  height: 9.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.green,
                             Colors.lightBlue,
                            Colors.blue,
                          ]
                      )
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("Linear Gradient from top left into bottom right with multiple color",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 9.sp),),
                SizedBox(height: 0.5.h),
                Container(
                  height: 9.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.green,
                            Colors.blue,
                            Colors.orange,
                            Colors.pink,
                          ]
                      )
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("Radial Gradient",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 9.sp),),
                SizedBox(height: 0.5.h),
                Container(
                  height: 9.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                        radius: 0.5,
                          colors: [
                            Colors.green,
                            Colors.blue,
                          ]
                      )
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("Radial Gradient with multiple color",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 9.sp),),
                SizedBox(height: 0.5.h),
                Container(
                  height: 9.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [
                            Colors.green,
                            Colors.blue.withOpacity(1),
                            Colors.orange,
                            Colors.pink,
                          ]
                      ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("Radial Gradient with multiple color and move position of the gradient",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 9.sp),),
                SizedBox(height: 0.5.h),
                Container(
                  height: 9.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                     center:Alignment(0.5,0.12),
                        tileMode: TileMode.clamp,
                        colors: [
                          Colors.green,
                          Colors.blue.withOpacity(1),
                          Colors.orange,
                          Colors.pink,
                        ]
                    ),
                  ),
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
