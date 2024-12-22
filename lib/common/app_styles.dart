

import 'package:biz/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppStyles{
   static TextStyle titleLarge = TextStyle(
     fontSize: 18.sp,
     fontWeight: FontWeight.w700,
     color: AppColors.primaryColor,
   );
   static TextStyle displayLarge = TextStyle(
     fontSize: 20.sp,
     fontWeight: FontWeight.w700,
     color: AppColors.primaryColor,
   );
   static TextStyle bodySmall = TextStyle(
     fontSize: 10.sp,
     fontWeight: FontWeight.w300,
     color: Colors.grey[800],
     height: 1.2,
   );
}