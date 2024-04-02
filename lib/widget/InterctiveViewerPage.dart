import 'package:devkitflutteruikit/Constants/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class InteractiveViewerPage extends StatefulWidget {
  const InteractiveViewerPage({super.key});

  @override
  State<InteractiveViewerPage> createState() => _InteractiveViewerPageState();
}

class _InteractiveViewerPageState extends State<InteractiveViewerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Interactive Viewer",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 4.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Interactive Viewer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

              Text("A widget that enables pan and zoom interctions with its child.",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 1.h,),
              InteractiveViewer(child: Image.asset(ImagePath.clip,height: 30.h,),
               maxScale: 5,
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