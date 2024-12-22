import 'dart:ui';

import 'package:biz/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Ui{

  static Color parseColor(String hexCode, {double? opacity}){
    try {
         return Color(int.parse(hexCode.replaceAll("#", "0xff")))
             .withOpacity(opacity??1);
    }catch(e){
        return Color(0xFFCCCCCC).withOpacity(opacity??1);
    }
  }
  static Widget backButton({Function()? onPressed, Color? iconColor}){
    return IconButton(
        onPressed: () {
          if(onPressed == null){
            Get.back();
          }else{
            onPressed();
          }
        },
        icon: Icon(Icons.arrow_back_ios,
        color: iconColor ?? AppColors.primaryColor,
        size: 12.sp,
        ),
    );
  }
  static BoxDecoration getBoxDecoration(
  {Color? color, double? radius, Border? border , Gradient? gradient}){
    return BoxDecoration(
      color: color?? Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(radius??10)),
      boxShadow: [
        BoxShadow(
          color: Get.theme.focusColor.withOpacity(.1),
          blurRadius: 10,
          offset: Offset(0, 5),
        )
      ],
      border: border ??
        Border.all(color: Get.theme.focusColor.withOpacity(.05)),
      gradient: gradient,
    );
  }
}