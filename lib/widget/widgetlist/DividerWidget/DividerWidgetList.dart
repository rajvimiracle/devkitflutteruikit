
import 'package:devkitflutteruikit/widget/widgetlist/DividerWidget/DividerWidgetitem/HorizontalDividerPage.dart';
import 'package:devkitflutteruikit/widget/widgetlist/DividerWidget/DividerWidgetitem/VerticalDividerPage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class DividerWidgetList extends StatefulWidget {
  String title;
  DividerWidgetList({super.key,this.title = 'Divider Widget'});

  @override
  State<DividerWidgetList> createState() => _DividerWidgetListState();
}

class _DividerWidgetListState extends State<DividerWidgetList> {
  List dividerwidgetlist = ["Horizontal Divider ","Vertical Divider",];

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
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_bgImage.png'),fit: BoxFit.cover)),
          child:  Padding( padding: EdgeInsets.all(5.w),
            child: Container(
              child:ListView.builder(
                itemCount: dividerwidgetlist.length,shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(2.w),
                    child: InkWell(
                      onTap: () {
                        switch(index){
                          case 0:
                            Get.to( HorizontalDividerPage());
                            break;
                          case 1:
                            Get.to( VerticalDividerPage());
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
                            dividerwidgetlist[index],
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
