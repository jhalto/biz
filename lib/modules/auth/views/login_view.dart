import 'package:biz/common/app_colors.dart';
import 'package:biz/global_widgets/circular_loading_widget.dart';
import 'package:biz/modules/auth/auth_controller.dart';
import 'package:biz/modules/auth/views/auth_header.dart';
import 'package:biz/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginView extends GetView<AuthController>{

  const LoginView({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(
        child: Form(
          child: ListView(
            key: controller.loginFormKey,
        
            primary: true,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.language);
                },
                child: Container(
                  color: Color.fromRGBO(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.language,
                        color: AppColors.primaryColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 2.w,),
                      Text(
                        Get.locale.toString().capitalize.toString().tr,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 15.sp
                        ),
                      ),
                    ],
                  ).marginSymmetric(
                    horizontal: 3.w,
                    vertical: 2.h,
                  ),
                ),
              ),
              AuthHeader(),
              Obx(() {
                if(controller.loading.isTrue){
                  return CircularLoadingWidget(height: 300,);
                }else{
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.user.value.loginBy = 'email';
                                  controller.user.refresh();
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 30.sp,
                                        width: 30.sp,
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Obx(
                                                () => Radio(
                                              value: 'email',
                                              activeColor: AppColors.primaryColor,
                                              groupValue: controller.user.value.loginBy,
                                                  onChanged: (value) {
                                              controller.user.value.loginBy = value!;
                                              controller.user.refresh();
                                            },),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Email".tr,
                                        style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.user.value.loginBy = 'mobile';
                                  controller.user.refresh();
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 30.sp,
                                        width: 30.sp,
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Obx(
                                            () => Radio(
                                                value: 'mobile',
                                                groupValue: controller.user.value.loginBy,
                                                onChanged: (value) {
                                                  controller.user.value.loginBy = value!;
                                                  controller.user.value.email = "";
                                                  controller.user.refresh();
                                                },),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Mobile".tr,
                                        style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ).paddingSymmetric(horizontal: 10),
                      Obx(
                        () => controller.user.value.loginBy == 'email'
                            ?TextField()
                            :TextField()
                      )
                    ],
                  );
                }
              },)

            ],
          ),
        ),
      ),

    );
  }

}