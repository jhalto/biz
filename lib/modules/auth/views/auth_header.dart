import 'package:biz/common/app_colors.dart';
import 'package:biz/common/app_styles.dart';
import 'package:biz/common/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AuthHeader extends GetView{
  AuthHeader({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          width: Get.width,
          child: Padding(
              padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: Ui.getBoxDecoration(
                    color: AppColors.primaryColor,
                    radius: 14,
                    border: Border.all(
                      width: 5,
                      color: Colors.white
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                       'assets/img/splash.png',
                      width: 70.sp,
                      height: 70.sp,
                    ),
                  ),
                ),
                Text(
                    "Biz",
                  style: AppStyles.displayLarge,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}