
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class TranslateTransfromPage extends StatefulWidget {
  const TranslateTransfromPage({super.key});

  @override
  State<TranslateTransfromPage> createState() => _TranslateTransfromPageState();
}

class _TranslateTransfromPageState extends State<TranslateTransfromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Translate Transform",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
          Image.asset("assets/images/img_bgImage.png",fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Translate Transform",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              Text("This is the example of translate Transform on conitner ",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 2.h,),
              Text("Original",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 1.5.h,),
              Container(
                color: Colors.pink,
                height: 7.h,
                width: 15.w,
              ),
              SizedBox(height: 3.h,),
              Text("Offset 100,0",style: TextStyle(color: Colors.black54),),
              Transform.translate(
                  offset: Offset(100.0, 0.0),
                child:   Container(
                  color: Colors.pink,
                  height: 7.h,
                  width: 15.w,
                ),
              ),
              SizedBox(height: 3.h,),
          Text("Offset 100,50",style: TextStyle(color: Colors.black54),),
          Transform.translate(
            offset: Offset(100.0, 50.0),
            child:   Container(
              color: Colors.pink,
              height: 7.h,
              width: 15.w,
            ),
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
