import 'package:devkitflutteruikit/Constants/ImagePath.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../Route/Routes.dart';

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
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(ImagePath.bgimg),fit: BoxFit.cover)),
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
                            Get.toNamed(Routes.abscorbpointer);
                            break;
                          case 1:
                            Get.toNamed(Routes.alignwidget);
                            break;
                          case 2:
                            Get.toNamed(Routes.animatealign);
                            break;
                          case 3:
                            Get.toNamed(Routes.animatedcontainer);
                            break;
                          case 4:
                            Get.toNamed(Routes.animatedcorsssfode);
                            break;
                          case 5:
                            Get.toNamed(Routes.animateddefaulttext);
                            break;
                          case 6:
                            Get.toNamed(Routes.animatedphysicalmodel);
                            break;
                          case 7:
                            Get.toNamed(Routes.animatedpositioned);
                            break;
                          case 8:
                            Get.toNamed(Routes.appbarpage);
                            break;
                          case 9:
                            Get.toNamed(Routes.bottomsheetlist);
                            break;
                          case 10:
                            Get.toNamed(Routes.clipRRectpage);
                            break;
                          case 11:
                            Get.toNamed(Routes.containerlist);
                            break;
                          case 12:
                            Get.toNamed(Routes.dividerwidgetlist);
                            break;
                          case 13:
                            Get.toNamed(Routes.expandedpage);
                            break;
                          case 14:
                               Get.toNamed(Routes.fadetransitionpage);
                               break;
                          case 15:
                            Get.toNamed(Routes.flexibalepage);
                            break;
                          case 16:
                            Get.toNamed(Routes.gesturedetectorpage);
                            break;
                          case 17:
                            Get.toNamed(Routes.ignorepointerpage);
                            break;
                          case 18:
                            Get.toNamed(Routes.imagewidgetpage);
                            break;
                              }
                      },
                      child: Container(width: 80.w,height: 8.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          image: const DecorationImage(image: AssetImage(ImagePath.conImg,), fit: BoxFit.fill,),
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
