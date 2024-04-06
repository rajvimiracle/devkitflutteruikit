import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OutlineButtonPage extends StatelessWidget {
  String title;
  OutlineButtonPage({super.key,this.title = 'Outline Button'});

  bool buttonenabled = false;

  String text =
      "Outline button is Similar to a ElevatedButton with a thin""\n"
      "                    grey rounded rectangle border.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9BBEC7),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(padding:  EdgeInsets.only(top: 3.h),
                    child: Text(text,maxLines: 2,style: TextStyle(color: Color(0xff9BBEC7),fontSize: 13),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4.h),
                    child: Divider(height: 1.w,color: Color(0xff9BBEC7).withOpacity(0.8),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4.h),
                    child: allOutlineButton(
                        context: context, conWidth: 45.w,borderRadius: 1.w, text: "OUTLINE BUTTON",toastText: 'OUTLINE BUTTON Pressed!',),),
                  Padding(padding: EdgeInsets.only(top: 4.h),
                    child: disableButton(context: context, text: "DISABLE", disableButtons: buttonenabled,conWidth: 28.w),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4.h),
                    child: iconButton(context: context, text: "OUTLINE BUTTON",toastText: 'OUTLINE BUTTON Pressed!',),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4.h),
                    child: disableIconButton(context: context, text: "OUTLINE BUTTON", disableButtons: buttonenabled),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4.h),
                    child: allOutlineButton(context: context, conWidth: 35.w,
                      borderRadius: 20.w, text: "Circle Border",toastText: 'Circle Border Pressed!',),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4.h),
                    child: disableButton(context: context, text: "Disable", disableButtons: buttonenabled,conWidth: 26.w),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget allOutlineButton({
    required BuildContext context,
    required double conWidth, required String text,
    Color? buttonColor, Gradient? gradientColor,
    double? conRadius,String? toastText, double? borderRadius,}) {
    return Container(
      height:5.h,width:conWidth,
      decoration: BoxDecoration(gradient: gradientColor,borderRadius: BorderRadius.circular(conRadius ?? 0)),
      child: OutlinedButton(
          onPressed: () {
            showToast(
              toastText,backgroundColor: Theme.of(context).primaryColorDark,
              textStyle: TextStyle(color: Theme.of(context).indicatorColor),
              position: StyledToastPosition.top,textAlign: TextAlign.left,
              context: context,alignment: Alignment.topLeft,fullWidth: true,
            );
          },
          style: ButtonStyle(
             shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
               side: BorderSide(color: Theme.of(context).bottomAppBarColor)
            )),
          ),
          child: Text(text,style: TextStyle(color: Theme.of(context).indicatorColor,fontSize: 13))
      ),
    );
  }

  Widget disableIconButton({
    required BuildContext context, required String text,
    required bool disableButtons,}){
    return Container(
      height: 5.h,width:51.w,
      child: OutlinedButton(
          onPressed: disableButtons ? (){} :null,style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1.w), side: BorderSide(color: Theme.of(context).bottomAppBarColor)
            )),
          ),
          child: Row(
            children: [
              Icon(Icons.add,size: 5.w,),SizedBox(width: 2.w,),
              Text(text,style: TextStyle(fontSize: 13)),],),
      ),
    );
  }

  Widget iconButton({
    required BuildContext context,String? toastText, required String text,}) {
    return Container(
      height: 5.h, width: 51.w,
      child: OutlinedButton(
          onPressed: () {
            showToast(
              toastText,backgroundColor: Theme.of(context).primaryColorDark,
              textStyle: TextStyle(color: Theme.of(context).indicatorColor),
              position: StyledToastPosition.top,textAlign: TextAlign.left,
              context: context,alignment: Alignment.topLeft,fullWidth: true,
            );
          },
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.w), side: BorderSide(color: Theme.of(context).bottomAppBarColor)
              )),
            ),
          child: Row(
            children: [
              Icon(Icons.add, color: Theme.of(context).indicatorColor, size: 5.w,), SizedBox(width: 2.w,),
              Text(text,style: TextStyle(color: Theme.of(context).indicatorColor,fontSize: 13)),],),
      ),
    );
  }

  Widget disableButton({
    required BuildContext context, required String text,
    required bool disableButtons, double? conWidth}) {
    return Container(
        height: 5.h,width:conWidth,
      child: OutlinedButton(
          onPressed: disableButtons ? (){} :null,
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.w),side: BorderSide(color: Theme.of(context).bottomAppBarColor)
              )),
            ),
          child: Text(text,style: TextStyle(fontSize: 13),),
      ),
    );
  }
}
