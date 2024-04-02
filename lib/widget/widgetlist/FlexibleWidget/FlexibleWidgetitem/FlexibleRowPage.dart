import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class FlexibleRowPage extends StatefulWidget {
  const FlexibleRowPage({super.key});

  @override
  State<FlexibleRowPage> createState() => _FlexibleRowPageState();
}

class _FlexibleRowPageState extends State<FlexibleRowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Flexible Row",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),

            Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Flexible Row",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

              Text("This is the example of flexible row",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                  /*  fit: FlexFit.tight,*/
                    child: Container(

                      color: Colors.red,
                      height: 100,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                   /* fit: FlexFit.loose,*/
                    child: Container(
                      color: Colors.green,
                      height: 100,
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                    ),
                  ),
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
