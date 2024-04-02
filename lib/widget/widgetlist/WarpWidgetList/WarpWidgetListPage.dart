

import 'package:devkitflutteruikit/widget/widgetlist/WarpWidgetList/WarpWidgetListItem/AlignmentWrapPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/WarpWidgetList/WarpWidgetListItem/SpacingWarpPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/WarpWidgetList/WarpWidgetListItem/WarpDirectionPage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'WarpWidgetListItem/StandartWarpPage.dart';

class WarpWidgetListPage extends StatefulWidget {
  String title;
  WarpWidgetListPage({super.key,this.title = 'Wrap Widget'});

  @override
  State<WarpWidgetListPage> createState() => _WarpWidgetListPageState();
}

class _WarpWidgetListPageState extends State<WarpWidgetListPage> {
  List stepperList = ["Standart Wrap","Warp Direction","Spacing Warp","Alignment Wrap",];

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
                           Get.to(StandartWarpPage());
                            break;
                          case 1:
                            Get.to(WarpDirectionPage());
                            break;
                          case 2:
                            Get.to(SpacingWarpPage());
                            break;
                          case 3:
                            Get.to(AlignmentWrapPage());
                            break;

                        }
                      },
                      child: Container(width: 80.w,height: 8.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          image: const DecorationImage(image: AssetImage("assets/images/img_con.png",), fit: BoxFit.fill,),
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
