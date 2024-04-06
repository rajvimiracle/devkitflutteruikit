import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SelectionControlPage extends StatefulWidget {
  String title;
  SelectionControlPage({super.key,this.title = 'Selection Controls'});

  @override
  State<SelectionControlPage> createState() => _SelectionControlPageState();
}

class _SelectionControlPageState extends State<SelectionControlPage> {

   List<bool> isClick =[false,false];

   bool switchFirst = false;
   String? selectedRadio;

   String checkBoxText =
       "Checkboxes allow the user to select multiple options form a""\n"
       "set. A normal checkbox's value is true or false and a tristate""\n"
       "checkbox's value can also be null.";
   String RadioButtonText =
       "Radio buttons allow the user to select one option from a set.""\n"
       "Use radio buttons for exclusive selection if you think the""\n"
       "user needs to see all available options side-by-side.";
   String SwitchText =
       "On/off switches toggle the state of a single settings option.""\n"
       "The option that the switch controls,as well as the state it's in,""\n"
       "should be made clear from the corresponding inline label.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
          title: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
          backgroundColor: Color(0xff9888A5),
      ),

      body: SafeArea(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.all(1.w),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 2.h,left: 2.w),
                    child: Text("--> CheckBox",style: TextStyle(color: Color(0xff9888A5),fontSize: 18),),
                  ),
                  Padding(padding: EdgeInsets.only(left: 2.w),
                    child: Wrap(
                      children: List.generate(2, (index) =>
                          Checkbox(
                            value: isClick[index],side: BorderSide(color: Theme.of(context).cardColor,width: 2),
                            activeColor: Theme.of(context).secondaryHeaderColor,
                            onChanged: (value) {isClick[index] = value!;setState(() {});},),),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2.w,left: 2.w),
                    child:Text(checkBoxText,maxLines: 3,style: TextStyle(color: Color(0xff9888A5),fontSize: 12),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2.w,left: 3.w,right: 3.w),
                    child: Divider(height: 1.w,color: Color(0xff9888A5).withOpacity(0.5),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2.w,left: 2.w),
                    child:Text("--> RadioButton",style: TextStyle(color: Color(0xff9888A5),fontSize: 18),),
                  ),
                  Padding(padding: EdgeInsets.only(left: 2.w),
                    child: Row(
                      children: [
                        Radio(value: "Male", groupValue: selectedRadio,activeColor:Theme.of(context).indicatorColor,
                          onChanged: (value) {setState(() {selectedRadio = value;});},), SizedBox(width: 3.w,),
                        Radio(value: "Female", groupValue: selectedRadio,activeColor:Theme.of(context).indicatorColor,
                          onChanged: (value) {setState(() {selectedRadio = value;});},), SizedBox(width: 3.w,),
                        Radio(groupValue: selectedRadio, value: "Other",activeColor:Theme.of(context).indicatorColor,
                          onChanged: (value) {setState(() {selectedRadio = value;});},),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2.h,left: 2.w),
                    child:Text(RadioButtonText,maxLines: 3,style: TextStyle(color: Color(0xff9888A5),fontSize: 12),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2.h,left: 3.w,right: 3.w),
                    child: Divider(height: 1.w,color: Color(0xff9888A5).withOpacity(0.5),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2.h,left: 2.w),
                    child:Text("--> Switch",style: TextStyle(color: Color(0xff9888A5),fontSize: 18),),
                  ),
                  Padding(padding: EdgeInsets.only(left: 2.w),
                    child: Row(
                      children: [
                        Switch(
                          activeTrackColor: Theme.of(context).splashColor,
                          inactiveThumbColor: Theme.of(context).primaryColorDark,inactiveTrackColor: Theme.of(context).highlightColor,
                          trackOutlineColor: MaterialStatePropertyAll(Theme.of(context).primaryColorDark),
                          value: switchFirst,activeColor: Theme.of(context).cardColor,
                          onChanged:(value) {setState(() {switchFirst = !switchFirst;});},
                        ),
                        SizedBox(width: 2.w,),
                        Switch(
                          value: true, activeTrackColor: Theme.of(context).splashColor,
                          inactiveThumbColor: Theme.of(context).primaryColorDark,inactiveTrackColor: Theme.of(context).highlightColor,
                          trackOutlineColor: MaterialStatePropertyAll(Theme.of(context).primaryColorDark),
                          activeColor: Theme.of(context).cardColor, onChanged:(value) {},
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2.h,left: 2.w),
                    child:Text(SwitchText,maxLines: 3,style: TextStyle(color: Color(0xff9888A5),fontSize: 12),),
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
