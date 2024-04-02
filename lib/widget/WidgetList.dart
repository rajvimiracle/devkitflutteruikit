
import 'package:devkitflutteruikit/widget/ClipRReactWidget.dart';
import 'package:devkitflutteruikit/widget/ExpandedWidgetPage.dart';
import 'package:devkitflutteruikit/widget/FadeTransitionPage.dart';
import 'package:devkitflutteruikit/widget/GestureDetectorWidgetPage.dart';
import 'package:devkitflutteruikit/widget/ImageWidget.dart';
import 'package:devkitflutteruikit/widget/InterctiveViewerPage.dart';
import 'package:devkitflutteruikit/widget/MediaQueryWidget.dart';
import 'package:devkitflutteruikit/widget/SideTransitionPage/SideTransitionPage.dart';
import 'package:devkitflutteruikit/widget/StackWidgetPage/StackWidgetPage.dart';
import 'package:devkitflutteruikit/widget/TranfromWidget/TransfromWidgetPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AbsorbPointerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedAlignPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedContiner/AnimatedContainerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedCrossFadePage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedDefaultTextPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedPhysicalModelPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedPositionedPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AppBar/AppBarList.dart';
import 'package:devkitflutteruikit/widget/widgetlist/BottomSheet/BottomSheetList.dart';
import 'package:devkitflutteruikit/widget/widgetlist/ContinerWidget/ContinerWidgetList.dart';
import 'package:devkitflutteruikit/widget/widgetlist/DividerWidget/DividerWidgetList.dart';
import 'package:devkitflutteruikit/widget/widgetlist/FlexibleWidget/FlexibleWidgetList.dart';
import 'package:devkitflutteruikit/widget/widgetlist/WarpWidgetList/WarpWidgetListItem/AlignmentWrapPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/WarpWidgetList/WarpWidgetListPage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'IgnorePointerWidget.dart';

class WidgetsListPage extends StatelessWidget {
  String title;
  WidgetsListPage({super.key,this.title = 'Animated'});

  List stepperList = [
    "Absorb Pointer",
    "Align Widget",
    "Animated Align",
    "Animated Container",
    "Animated Cross Fade",
    "Animated Default TextStyle",
    "Animated Physical Model",
    "Animated Positioned",
    "App Bar",
    "Bottom Sheet",
    "ClipRRect Widget",
    "Container Widget",
    "Divider Widget",
    "Expanded",
    "Fade Transition",
    "Flexible Widget",
    "Gesture Detector Widget",
    "Ignore Pointer",
    "Image Widget",
    "Interactive Viewer",
    "Media Query Widget",
    "Side Transition",
    "Stack Widget",
    "Transform Widget",
    "Wrap Widget",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_bgImage.png'),fit: BoxFit.cover)),
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
                        Get.to(AbsorbPointerPage());
                            break;
                          case 1:
                            Get.to(AlignmentWrapPage());
                            break;
                          case 2:
                            Get.to(AnimatedAlignPage());
                            break;
                          case 3:
                         Get.to(AnimatedContainerPage());
                            break;
                          case 4:
                            Get.to(AnimatedCrossFadePage());
                            break;
                          case 5:
                            Get.to(AnimatedDefaultTextPage());
                            break;
                          case 6:
                            Get.to(AnimatedPhysicalModelPage());
                            break;
                          case 7:
                            Get.to(AnimatedPositionedPage());
                            break;
                          case 8:
                            Get.to(AppBarListPage());
                            break;
                          case 9:
                            Get.to(BottomSheetList());
                            break;
                          case 10:
                            Get.to(ClipRRectPage());
                            break;
                          case 11:
                            Get.to(ContainerWidgetList());
                            break;
                          case 12:
                            Get.to(DividerWidgetList());
                            break;
                          case 13:
                            Get.to(ExpandedWidgetPage());
                            break;
                          case 14:
                            Get.to(FadeTransitionPage());
                               break;
                          case 15:
                            Get.to(FlexibleWidgetList());
                            break;
                          case 16:
                            Get.to(GestureDetectorWidgetPage());
                            break;
                          case 17:
                            Get.to(IgnorePointerPage());
                            break;
                          case 18:
                            Get.to(ImageWidgetPage());
                            break;
                          case 19:
                            Get.to(InteractiveViewerPage());
                            break;
                          case 20:
                            Get.to(MediaQueryWidgetPage());
                            break;
                          case 21:
                            Get.to(SideTransitionPage());
                            break;
                          case 22:
                            Get.to(StackWidgetPage());
                            break;
                          case 23:
                            Get.to(TransformWidgetPage());
                            break;
                          case 24:
                            Get.to(WarpWidgetListPage());
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
