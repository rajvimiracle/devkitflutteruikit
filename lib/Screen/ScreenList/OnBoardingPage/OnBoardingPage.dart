import 'package:devkitflutteruikit/Constants/IconPath.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("On Boarding",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,letterSpacing: 1),),
        centerTitle: true,
        backgroundColor: Colors.white60,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 1.5.h,bottom: 7.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("OnBoarding Screen",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.8,fontSize: 14.sp),),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("OnBoarding Screen used of ",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 11.sp,color: Colors.grey),),
                    Text("quick tutorial of the apps",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 11.sp,color: Colors.grey),),
                  ],
                ),
                Image.asset(IconPath.onboarding,fit: BoxFit.cover,height: 5.h,color: Colors.blue,),
              ],
            ),
            SizedBox(height: 2.h,),
          ],
        ),
      ),
    );
  }
}
