
import 'package:devkitflutteruikit/Constants/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WarpDirectionPage extends StatefulWidget {
  const WarpDirectionPage({super.key});

  @override
  State<WarpDirectionPage> createState() => _WarpDirectionPageState();
}

class _WarpDirectionPageState extends State<WarpDirectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("WarpDirection",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("WarpDirection",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  Text("this is the example of of wrap widget without any style",style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  SizedBox(height: 2.h,),
                  Text("Direction horizontal",style: TextStyle(color: Colors.blue),),
                  Wrap(
                    children: [
                      Text("aaaaaabbbbbbbccccccgggggggrrrrrhhhhhhrrrreeeeejjjjjkkkkkyyyyyuuuuttttiiiiooooeeeeeewqwwwllxxlvfgmhyyuiyioeoedjfntjueri")
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Text("Direction vertical",style: TextStyle(color: Colors.blue),),
                  SizedBox(height: 2.h,),
                  Wrap(


                    children: [
                      Text("asssddfgfw\nsrgtgygc\nvhhhhrrrr\nhrsdftrg\ntbhcvswi\nofrk\nigf;kdol\nkdlrgj\nkglbhjl\nfkjfw\nklejdeguh\nwifhyiu\ngeryug\nydfiugyd\nrigfde\ni9sqp9\ngt80ie\nr0t9fonj")
                    ],
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
