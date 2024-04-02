
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BottomSheetPage1 extends StatefulWidget {
  const BottomSheetPage1({super.key});

  @override
  State<BottomSheetPage1> createState() => _BottomSheetPage1State();
}

class _BottomSheetPage1State extends State<BottomSheetPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Standart BottomSheet",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 4.w,left: 5.w,right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Standart BottomSheet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

                  Text("This is the example of standart of Bottom Sheet without any style",style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  SizedBox(height: 1.h,),
                  CustomButton(title: "Open BottomSheet",
                    onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(),
                        context: context,
                        builder: (context) {
                          return Padding(padding: EdgeInsets.only(
                            top: 2.h,bottom: 2.h,left: 6.w,right: 6.w,
                          ),
                            child: Container(
                              height: 5.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: Center(child: Text("BottomSheet",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w700),))),
                          );
                        },);

                    }
                  ),

              ],),
            ),
          ],
        ),
      ),
    );
  }
}



class CustomButton extends StatelessWidget {
  String title;
  double? fontSIze;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;
  Size? size;

  CustomButton({
    required this.title,
    this.fontSIze,
    this.fontWeight,
    this.radius,
    this.size,

    this.bgColor = Colors.lightBlue,
    this.onTap,
    this.fontColor = Colors.white,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap!(),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(size ?? (Size(45.w, 4.h)),),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 5),
          ),
        ),

        backgroundColor: MaterialStateProperty.all(bgColor ?? Colors.white ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 0.6,
          fontSize: fontSIze ?? 10.sp,
          color: fontColor ?? Colors.grey,
        ),
      ),
    );
  }
}