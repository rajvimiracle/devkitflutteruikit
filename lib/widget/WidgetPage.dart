import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class WidgetPage extends StatefulWidget {
  const WidgetPage({super.key});

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Miracle Kit",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w900),),
        actions: [
        Padding(
          padding:  EdgeInsets.only(right: 3.w),
          child: Icon(Icons.settings),
        ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 3.h,bottom: 3.h),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xff227C9D),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon_a.png"),scale: 0.6,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                      Container(
                        height: 9.h,
                                width: 72.w,
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
                                  Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
                                  Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor:  Color(0xff227C9D),
                                child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                      ),
              ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xffE3C16F),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon_align.png"),scale: 0.6,
                      ),

                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    height: 9.h,
                    width: 72.w,
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
                              Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
                              Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor:  Color(0xffE3C16F),
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   child: Stack(
                  //     children: [
                  //
                  //       Container(
                  //         height: 8.h,
                  //         width: 70.w,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey,
                  //           borderRadius: BorderRadius.all(Radius.circular(10),),
                  //         ),
                  //
                  //       ),
                  //       Positioned(
                  //         top: 5,
                  //         bottom: 5,
                  //         left: 250,
                  //         right: 0,
                  //         child: Container(
                  //           height: 6.h,
                  //           width: 15.w,
                  //           decoration: BoxDecoration(
                  //             color: Colors.green,
                  //             shape: BoxShape.circle,
                  //           ),
                  //
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xff17C3B2),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon_animated.png"),scale: 0.6,
                      ),

                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    height: 9.h,
                    width: 72.w,
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
                              Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
                              Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor:  Color(0xff17C3B2),
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   child: Stack(
                  //     children: [
                  //
                  //       Container(
                  //         height: 8.h,
                  //         width: 70.w,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey,
                  //           borderRadius: BorderRadius.all(Radius.circular(10),),
                  //         ),
                  //
                  //       ),
                  //       Positioned(
                  //         top: 5,
                  //         bottom: 5,
                  //         left: 250,
                  //         right: 0,
                  //         child: Container(
                  //           height: 6.h,
                  //           width: 15.w,
                  //           decoration: BoxDecoration(
                  //             color: Colors.green,
                  //             shape: BoxShape.circle,
                  //           ),
                  //
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xff227C9D),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon_a.png"),scale: 0.6,
                      ),

                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    height: 9.h,
                    width: 72.w,
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
                              Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
                              Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor:  Color(0xff227C9D),
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   child: Stack(
                  //     children: [
                  //
                  //       Container(
                  //         height: 8.h,
                  //         width: 70.w,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey,
                  //           borderRadius: BorderRadius.all(Radius.circular(10),),
                  //         ),
                  //
                  //       ),
                  //       Positioned(
                  //         top: 5,
                  //         bottom: 5,
                  //         left: 250,
                  //         right: 0,
                  //         child: Container(
                  //           height: 6.h,
                  //           width: 15.w,
                  //           decoration: BoxDecoration(
                  //             color: Colors.green,
                  //             shape: BoxShape.circle,
                  //           ),
                  //
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xffE3C16F),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon_align.png"),scale: 0.6,
                      ),

                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    height: 9.h,
                    width: 72.w,
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
                              Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
                              Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor:  Color(0xffE3C16F),
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   child: Stack(
                  //     children: [
                  //
                  //       Container(
                  //         height: 8.h,
                  //         width: 70.w,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey,
                  //           borderRadius: BorderRadius.all(Radius.circular(10),),
                  //         ),
                  //
                  //       ),
                  //       Positioned(
                  //         top: 5,
                  //         bottom: 5,
                  //         left: 250,
                  //         right: 0,
                  //         child: Container(
                  //           height: 6.h,
                  //           width: 15.w,
                  //           decoration: BoxDecoration(
                  //             color: Colors.green,
                  //             shape: BoxShape.circle,
                  //           ),
                  //
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xff17C3B2),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon_animated.png"),scale: 0.6,
                      ),

                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    height: 9.h,
                    width: 72.w,
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
                              Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
                              Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor:  Color(0xff17C3B2),
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   child: Stack(
                  //     children: [
                  //
                  //       Container(
                  //         height: 8.h,
                  //         width: 70.w,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey,
                  //           borderRadius: BorderRadius.all(Radius.circular(10),),
                  //         ),
                  //
                  //       ),
                  //       Positioned(
                  //         top: 5,
                  //         bottom: 5,
                  //         left: 250,
                  //         right: 0,
                  //         child: Container(
                  //           height: 6.h,
                  //           width: 15.w,
                  //           decoration: BoxDecoration(
                  //             color: Colors.green,
                  //             shape: BoxShape.circle,
                  //           ),
                  //
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xff227C9D),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon_a.png"),scale: 0.6,
                      ),

                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    height: 9.h,
                    width: 72.w,
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
                              Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
                              Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor:  Color(0xff227C9D),
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   child: Stack(
                  //     children: [
                  //
                  //       Container(
                  //         height: 8.h,
                  //         width: 70.w,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey,
                  //           borderRadius: BorderRadius.all(Radius.circular(10),),
                  //         ),
                  //
                  //       ),
                  //       Positioned(
                  //         top: 5,
                  //         bottom: 5,
                  //         left: 250,
                  //         right: 0,
                  //         child: Container(
                  //           height: 6.h,
                  //           width: 15.w,
                  //           decoration: BoxDecoration(
                  //             color: Colors.green,
                  //             shape: BoxShape.circle,
                  //           ),
                  //
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 17.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xffE3C16F),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon_align.png"),scale: 0.6,
                      ),

                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    height: 9.h,
                    width: 72.w,
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
                              Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
                              Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor:  Color(0xffE3C16F),
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   child: Stack(
                  //     children: [
                  //
                  //       Container(
                  //         height: 8.h,
                  //         width: 70.w,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey,
                  //           borderRadius: BorderRadius.all(Radius.circular(10),),
                  //         ),
                  //
                  //       ),
                  //       Positioned(
                  //         top: 5,
                  //         bottom: 5,
                  //         left: 250,
                  //         right: 0,
                  //         child: Container(
                  //           height: 6.h,
                  //           width: 15.w,
                  //           decoration: BoxDecoration(
                  //             color: Colors.green,
                  //             shape: BoxShape.circle,
                  //           ),
                  //
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Align(
alignment: Alignment.topCenter,
child: Stack(
children: <Widget>[
Container(

height: 8.h,
width: 55.w,
child: Container(
padding: EdgeInsets.only(left: 7.w),
decoration: BoxDecoration(
color: Colors.grey.withOpacity(0.5),
borderRadius: BorderRadius.all(Radius.circular(10)),
),

),
),

Positioned(
bottom: 2.h,
right: 0,
child: Container(
height: 40,
width: 40,
decoration: BoxDecoration(
shape: BoxShape.circle,
// border: Border.all(
//   width: 4,
//   color: Colors.white,
// ),
color: Colors.black.withOpacity(0.5),
),
child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
),
),
],
),
),*/
