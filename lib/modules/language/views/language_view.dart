 import 'package:biz/common/app_colors.dart';
import 'package:biz/common/app_styles.dart';
import 'package:biz/modules/language/cotrollers/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LanguageView extends GetView<LanguageController>{
  final bool hideAppBar;
  LanguageView({super.key,this.hideAppBar = false});
    @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: hideAppBar
          ?null
          :AppBar(

        toolbarHeight: 8.sh,
        backgroundColor: AppColors.primaryColor,
        title: Text(
           "Change Language".tr,
           style: AppStyles.titleLarge.merge(
             TextStyle(
               color: Colors.white
             )
           ),
        ),
      ),

    );
  }
}