import 'dart:ui';

import 'package:devkitflutteruikit/widget/AnimationWidget/AnimationWidgetListPage.dart';
import 'package:devkitflutteruikit/widget/AspectRatio/AspectRatioPage.dart';
import 'package:devkitflutteruikit/widget/CardWidget/CardListPage.dart';
import 'package:devkitflutteruikit/widget/ClipRReactWidget.dart';
import 'package:devkitflutteruikit/widget/DataTable/DataTablePage.dart';
import 'package:devkitflutteruikit/widget/DismissibleList/DismissibleListPage.dart';
import 'package:devkitflutteruikit/widget/DrawerListPage.dart';
import 'package:devkitflutteruikit/widget/FadeTransitionPage.dart';
import 'package:devkitflutteruikit/widget/GestureDetectorWidgetPage.dart';
import 'package:devkitflutteruikit/widget/HeroWidget/HeroWidgetPage.dart';
import 'package:devkitflutteruikit/widget/IgnorePointerWidget.dart';
import 'package:devkitflutteruikit/widget/ImageWidget.dart';
import 'package:devkitflutteruikit/widget/InterctiveViewerPage.dart';
import 'package:devkitflutteruikit/widget/MediaQueryWidget.dart';
import 'package:devkitflutteruikit/widget/RotationTransition/RotationTransitionPage.dart';
import 'package:devkitflutteruikit/widget/SafeAreaWidget/SafeAreaWidgetListPage.dart';
import 'package:devkitflutteruikit/widget/SizeTransitionWidget/SizeTransitionPage.dart';
import 'package:devkitflutteruikit/widget/TranfromWidget/TransfromWidgetItem/ScaleTransfromPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AlignWidgetPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/AnimatedAlignPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/BottomSheet/BottomSheetList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'ButtonPage.dart';
import 'ExpandedeWidget/ExpandedWidgetPage.dart';
import 'ScaleTransitionWidget/ScaleTransitionPage.dart';
import 'SideTransitionPage/SideTransitionPage.dart';
import 'SnakBarListPage.dart';
import 'TranfromWidget/TransfromWidgetPage.dart';
import 'widgetlist/AbsorbPointerPage.dart';
import 'widgetlist/AnimatedContiner/AnimatedContainerPage.dart';
import 'widgetlist/AppBar/AppBarList.dart';
import 'widgetlist/ContinerWidget/ContinerWidgetList.dart';
import 'widgetlist/DividerWidget/DividerWidgetList.dart';
import 'widgetlist/FlexibleWidget/FlexibleWidgetList.dart';
import 'widgetlist/WarpWidgetList/WarpWidgetListPage.dart';

class WidgetPage extends StatefulWidget {
  const WidgetPage({super.key});

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_appbar.png", title: "App Bar", subtitle: "A material Design app bar",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_container.png", title: "Continer Widget", subtitle: "One of the main widget in Flutter",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_Flexible.png", title: "Flexible Widget", subtitle: "Used to divider with flex value",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_expanded.png", title: "Expanded  Widget", subtitle: "Used to fie the rest of screen",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_button.png", title: "Button Widget", subtitle: "A material Design all types button ",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_divider.png", title: "Divider Widget", subtitle: "Usually used for menu",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_card.png", title: "Card Widget", subtitle: "One of the main widget in flutter",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_transfrom.png", title: "Transform Widget", subtitle: "Usually to transform widget\n in flutter",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_animated.png", title: "Side Transition", subtitle: "Animates the position of a\nwidget in flutter",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated.png", title: "Animated Container", subtitle: "Used to animate a container",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_wrap.png", title: "Wrap Widget", subtitle: "USed to list data from left to right",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_a.png", title: "Absorb Pointer", subtitle: "Absorb Pointers during hit testing",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_align.png", title: "Align Widget", subtitle: "Used to do some alignment",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_animated.png", title: "Animated Align", subtitle: "Animated Align of align",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_clip.png", title: "ClipRRect Widget", subtitle: "A Widget that clips its child",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated.png", title: "Fade Transition", subtitle: "Animates the opacity of widget",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_finger.png", title: "Gesture Detector Widget", subtitle: "Used to handle touch on object",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_a.png", title: "Ignore Pointer", subtitle: "A Widget that is invisible\nduring hit testing",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icons_interactive.png", title: "Interactive Viewer Widget", subtitle: "A Widget gallery, with multiple\nactions and views",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_mediaquery.png", title: "Media Query Widget", subtitle: "Used to get device information\nscreen",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_bottomsheet.png", title: "Bottom Sheet", subtitle: "use to some show layout\nfrom the bottom",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_appbar.png", title: "Drawer Widget", subtitle: "Usually used for menu",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_aspect.png", title: "SnackBar Widget", subtitle: "Used to so text",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_snakbar.png", title: "Aspect Ratio", subtitle: "The aspect ratio is expressed as a\nratio of width to height",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_datatable.png", title: "Data Table", subtitle: "A Widget used to display and\nmanipulate data in a tabular view",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_menu.png", title: "Dismissible", subtitle: "A widget that can be dismissed by\ndragging in the indicated direction",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_hero.png", title: "Hero Widget", subtitle: "Hero widget to animate a widget\nfrom one screen to the next",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_image.png", title: "Image Widget", subtitle: "Use to show image",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_opacity.png", title: "Opacity Widget", subtitle: "A widget that makes its child\npartially transparent.",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_safearea.png", title: "Safe Area Widget", subtitle: "SafeArea widget is an essential\ncomponent used to ensure a Flutter",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated.png", title: "Animation Widget", subtitle: "The Widget to create a widget that\nperforms a reusable animation",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_animated.png", title: "Rotation Transition", subtitle: "Animates the rotation of a widget",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_animated.png", title: "Scale Transition", subtitle: "Animates the scale of a transformed  widget",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated.png", title: "Size Transition", subtitle: "Animates its own size and clips\nand align its child",),

];

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 5.h,),

          ),
          title: Text("Widgets",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900),),
          actions: [
          Padding(
            padding:  EdgeInsets.only(right: 3.w),
            child: Icon(Icons.settings),
          ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w,bottom: 2.h),
          child: ListView.separated(

            shrinkWrap: true,
            itemCount: widgetdata.length,
            itemBuilder: (context, index) {
              return  InkWell(
                onTap: () {
                  switch(index){
                    case 0:
                    Get.to(AppBarListPage());
                    break;
                    case 1:
                      Get.to(ContainerWidgetList());
                      break;
                    case 2:
                      Get.to(FlexibleWidgetList());
                      break;
                    case 3:
                      Get.to(ExpandedWidgetPage());
                      break;
                    case 4:
                      Get.to(ButtonPage());
                      break;
                    case 5:
                      Get.to(DividerWidgetList());
                      break;
                    case 6:
                      Get.to(CardListPage());
                      break;
                    case 7:
                      Get.to(TransformWidgetPage());
                      break;
                    case 8:
                      Get.to(SideTransitionPage());
                      break;
                    case 9:
                      Get.to(AnimatedContainerPage());
                      break;
                    case 10:
                      Get.to(WarpWidgetListPage());
                      break;
                    case 11:
                      Get.to(AbsorbPointerPage());
                      break;
                    case 12:
                      Get.to(AlignWidgetPage());
                      break;
                    case 13:
                      Get.to(AnimatedAlignPage());
                      break;
                    case 14:
                      Get.to(ClipRRectPage());
                      break;
                    case 15:
                      Get.to(FadeTransitionPage());
                      break;
                    case 16:
                      Get.to(GestureDetectorWidgetPage());
                      break;
                    case 17:
                      Get.to(IgnorePointerPage());
                      break;
                    case 18:
                      Get.to(InteractiveViewerPage());
                      break;
                    case 19:
                      Get.to(MediaQueryWidgetPage());
                      break;
                    case 20:
                      Get.to(BottomSheetListPage());
                      break;
                    case 21:
                      Get.to(DrawerListPage());
                      break;
                    case 22:
                      Get.to(SnakBarListPage());
                      break;
                    case 23:
                      Get.to(AspectRatioPage());
                      break;
                    case 24:
                      Get.to(DataTablePage());
                      break;
                    case 25:
                      Get.to(DismissibleListPage());
                      break;
                    case 26:
                      Get.to(HeroWidgetPage());
                      break;
                    case 27:
                      Get.to(ImageWidgetPage());
                      break;
                    case 28:
                      Get.to(SafeAreaWidgetListPage());
                      break;
                    case 29:
                      Get.to(AnimationWidgetListPage());
                      break;
                    case 30:
                      Get.to(RotationTransitionPage());
                      break;
                    case 31:
                      Get.to(ScaleTransitionPage());
                      break;
                    case 32:
                      Get.to(SizeTransitionPage());
                      break;
                  }
                },
                child: Row(
                       children: [
                               Container(
                                   height: 10.h,
                                   width: 18.w,
                                   decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(6)),
                                     color: widgetdata[index].color1,
                                     image: DecorationImage(
                                       image: AssetImage(widgetdata[index].img.toString()),scale: 0.8,
                                     ),
                                   ),
                               ),
                         SizedBox(width: 4.w,),
                         Container(
                           height: 11.h,
                           width: 70.w,
                           decoration: BoxDecoration(
                             color: Colors.grey.withOpacity(0.1),
                             borderRadius: BorderRadius.all(Radius.circular(10),),
                           ),
                           child: Padding(
                             padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 12.sp),),
                                     Text(widgetdata[index].subtitle.toString(),style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                                   ],
                                 ),
                                 CircleAvatar(
                                   radius: 15,
                                   backgroundColor:  widgetdata[index].color1,
                                   child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 2.h,); },
          ),
        ),

      ),
    );
  }
}






class Widgetdata {
  String img;
  Color color1;
  String title;
  String subtitle;




  Widgetdata({
   required this.color1,
    required this.img,
    required this.title,
    required this.subtitle,
  });
}



























//
// Row(
// children: [
// Container(
// height: 8.h,
// width: 17.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(6)),
// color: Color(0xff9888A5),
// image: DecorationImage(
// image: AssetImage("assets/icons/icon_a.png"),scale: 0.6,
// ),
// ),
// ),
// SizedBox(width: 5.w,),
// Container(
// height: 9.h,
// width: 72.w,
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(0.1),
// borderRadius: BorderRadius.all(Radius.circular(10),),
// ),
// child: Padding(
// padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
// Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
// ],
// ),
// CircleAvatar(
// radius: 15,
// backgroundColor:  Color(0xff9888A5),
// child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
// )
// ],
// ),
// ),
// ),
// ],
// ),
// SizedBox(height: 2.h),
// Row(
// children: [
// Container(
// height: 8.h,
// width: 17.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(6)),
// color: Color(0xffC0B298),
// image: DecorationImage(
// image: AssetImage("assets/icons/icon_align.png"),scale: 0.6,
// ),
//
// ),
// ),
// SizedBox(width: 5.w,),
// Container(
// height: 9.h,
// width: 72.w,
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(0.1),
// borderRadius: BorderRadius.all(Radius.circular(10),),
// ),
// child: Padding(
// padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
// Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
// ],
// ),
// CircleAvatar(
// radius: 15,
// backgroundColor:  Color(0xffC0B298),
// child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
// )
// ],
// ),
// ),
// ),
// ],
// ),
// SizedBox(height: 2.h),
// Row(
// children: [
// Container(
// height: 8.h,
// width: 17.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(6)),
// color: Color(0xff9BBEC7
//
// ),
// image: DecorationImage(
// image: AssetImage("assets/icons/icon_animated.png"),scale: 0.6,
// ),
//
// ),
// ),
// SizedBox(width: 5.w,),
// Container(
// height: 9.h,
// width: 72.w,
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(0.1),
// borderRadius: BorderRadius.all(Radius.circular(10),),
// ),
// child: Padding(
// padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
// Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
// ],
// ),
// CircleAvatar(
// radius: 15,
// backgroundColor:  Color(0xff9BBEC7),
// child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
// )
// ],
// ),
// ),
// ),
// ],
// ),
