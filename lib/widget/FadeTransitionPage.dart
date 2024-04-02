import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({super.key});

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(duration: Duration(seconds: 2), vsync: this)..repeat(reverse: true);
  late final Animation<double> _animation =CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  @override
  void dispose() {
   _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Fade Transition",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Fade Transition",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

              Text("Animates the opacity of a widget",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 3.h,),
              FadeTransition(
                opacity: _animation,
                child: Image.asset('assets/images/img_clip1.png',height: 25.h,),

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
