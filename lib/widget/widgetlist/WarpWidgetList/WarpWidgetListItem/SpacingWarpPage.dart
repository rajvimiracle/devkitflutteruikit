import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../Constants/ImagePath.dart';

class SpacingWarpPage extends StatefulWidget {
  const SpacingWarpPage({super.key});

  @override
  State<SpacingWarpPage> createState() => _SpacingWarpPageState();
}

class _SpacingWarpPageState extends State<SpacingWarpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Spacing Warp",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
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
                  Text("Spacing Warp ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  Text("this is the example of of wrap widget without any style",style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  SizedBox(height: 2.h,),
                  Text("Spacing horizontal",style: TextStyle(color: Colors.blue),),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 8.0,
                    children: [
                      Text("aaaaaabbbbbbbccccccgggggggrrrrrhhhhhhrrrreeeeejjjjjkkkkkyyyyyuuuuttttiiiiooooeeeeeewqwwwllxxlvfgmhyyuiyioeoedjfntjueri",style: TextStyle(letterSpacing: 4),)
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Text("Spacing vertical",style: TextStyle(color: Colors.blue),),
                  SizedBox(height: 2.h,),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10.0,
                    runSpacing: 8.0,
                    children: [
                      Text("aaaaaabbbbbbbccccccgggggggrrrrrhhhhhhrrrreeeeejjjjjkkkkkyyyyyuuuuttttiiiiooooeeeeeewqwwwllxxlvfgmhyyuiyioeoedjfntjueri",style: TextStyle(letterSpacing: 1),)
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