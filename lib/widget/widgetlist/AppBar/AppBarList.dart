
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarPage1.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarPage2.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarPage3.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarPage4.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class AppBarListPage extends StatefulWidget {
  String title;
  AppBarListPage({super.key,this.title = 'App Bar'});

  @override
  State<AppBarListPage> createState() => _AppBarListPageState();
}

class _AppBarListPageState extends State<AppBarListPage> {
  List stepperList = ["App Bar 1 - Standart ","App Bar 2 - Image Title","App Bar 3 - Icon","App Bar 4 - Properties"];

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
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_bgImg.png'),fit: BoxFit.cover)),
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
                            Get.to( AppBarPage1());
                            break;
                          case 1:
                            Get.to( AppBarPage2());
                            break;
                          case 2:
                            Get.to( AppBarPage3());
                            break;
                          case 3:
                            Get.to( AppBarPage4());
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
