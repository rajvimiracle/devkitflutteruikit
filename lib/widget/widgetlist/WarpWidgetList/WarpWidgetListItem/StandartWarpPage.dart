import 'package:devkitflutteruikit/Constants/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class StandartWarpPage extends StatefulWidget {
  const StandartWarpPage({super.key});

  @override
  State<StandartWarpPage> createState() => _StandartWarpPageState();
}

class _StandartWarpPageState extends State<StandartWarpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Standart Wrap",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
          Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Standart Wrap",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              Text("this is the example of of wrap widget without any style",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 2.h,),
              Wrap(
                children: [
                Text("aaaaaabbbbbbbccccccgggggggrrrrrhhhhhhrrrreeeeejjjjjkkkkkyyyyyuuuuttttiiiiooooeeeeeewqwwwllxxlvfgmhyyuiyioeoedjfntjueri")
                ],
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
