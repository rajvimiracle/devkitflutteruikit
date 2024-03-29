import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/ImagePath.dart';

class StandartContainerPage extends StatefulWidget {
  const StandartContainerPage({super.key});

  @override
  State<StandartContainerPage> createState() => _StandartContainerPageState();
}

class _StandartContainerPageState extends State<StandartContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Standart Container",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 4.h,left: 5.w,right: 5.w ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Standart Container",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  Text("This is the example of Container without any style",style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  SizedBox(height: 1.h,),
                  Text("this text is inside continer",style: TextStyle(color: Colors.black54,fontSize: 10.sp),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
