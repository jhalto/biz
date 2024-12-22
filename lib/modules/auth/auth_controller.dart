import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../model/user.dart';

class AuthController extends GetxController{
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  RxBool loading = false.obs;
  Rx<User> user = Rx(User());
}