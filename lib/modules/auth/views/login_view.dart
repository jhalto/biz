import 'package:biz/modules/auth/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

                },
              )
            ],
          ),
        ),
      ),

    );
  }

}