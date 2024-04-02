import 'package:devkitflutteruikit/widget/TranfromWidget/TransfromWidgetItem/ScaleTransfromPage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'TransfromWidgetItem/RotateTransfromPage.dart';
import 'TransfromWidgetItem/SkewTransfromPage.dart';
import 'TransfromWidgetItem/TranslateTransfromPage.dart';

class TransformWidgetPage extends StatefulWidget {
  String title;
  TransformWidgetPage({super.key,this.title = 'Transfrom Widget'});

  @override
  State<TransformWidgetPage> createState() => _TransformWidgetPageState();
}

class _TransformWidgetPageState extends State<TransformWidgetPage> {
  List stepperList = ["Rotate Transform","Scale Transform","Translate Transform","Skew Transform"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/img_bgImage.png"),fit: BoxFit.cover)),
          child:  Padding( padding: EdgeInsets.all(5.w),
            child: Container(
              child:ListView.builder(
                itemCount: stepperList.length,shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(2.w),
                    child: InkWell(
                      onTap: () {
                        switch(index){
                          case 0:
                         Get.to(RotateTransfromPage());
                            break;
                          case 1:
                            Get.to(ScaleTransfromPage());
                            break;
                          case 2:
                            Get.to(TranslateTransfromPage());
                            break;
                          case 3:
                       Get.to(SkewTransfromPage());
                            break;
                        }
                      },
                      child: Container(width: 80.w,height: 8.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          image: const DecorationImage(image: AssetImage('assets/images/img_con.png',), fit: BoxFit.fill,),
                        ),
                        child: Center(
                          child: Text(
                            stepperList[index],
                            style: TextStyle(color: Theme.of(context).secondaryHeaderColor,fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
