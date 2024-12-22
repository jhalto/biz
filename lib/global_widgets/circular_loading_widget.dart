import 'dart:async';

import 'package:biz/common/app_colors.dart';
import 'package:biz/common/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CircularLoadingWidget extends StatefulWidget {
  final double? height;
  final ValueChanged<void>? onComplete;
  final String? onCompleteText;
  const CircularLoadingWidget(
      {super.key,this.height,this.onComplete,this.onCompleteText});

  @override
  State<CircularLoadingWidget> createState() => _CircularLoadingWidgetState();
}
class _CircularLoadingWidgetState extends State<CircularLoadingWidget>
    with SingleTickerProviderStateMixin{
  Animation<double>? animation;
  AnimationController? animationController;
   @override
  void initState() {

    super.initState();
    animationController = AnimationController(
        duration: Duration(milliseconds: 300),
        vsync: this);
    CurvedAnimation curve =
        CurvedAnimation(parent: animationController!, curve: Curves.easeOut)
      ..addListener(() {
        if(mounted){
          setState(() {
          });
        }
      });
    Timer(Duration(seconds: 10),() {
      if(mounted){
        animationController!.forward();
      }
      widget.onComplete;
    },);
  }
  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return animationController!.isCompleted
    ?SizedBox(
      height: widget.height,
      child: Center(
        child: Text(widget.onCompleteText??"",
        style: AppStyles.bodySmall.merge(TextStyle(fontSize: 14)),
        ),
      ),
    ):
    Opacity(opacity: animation!.value,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(
           child: CircularProgressIndicator(
             color: AppColors.primaryColor,
           ),
         ),
         SizedBox(
           height: 50,
         ),
         Text(
           "Please wait".tr,
           style: TextStyle(fontSize: 12.sp),
         )
       ],
     ),
    );
  }
}
