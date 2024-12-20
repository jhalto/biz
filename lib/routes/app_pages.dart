import 'package:biz/modules/auth/auth_bindings.dart';
import 'package:biz/modules/auth/views/login_view.dart';
import 'package:biz/modules/language/bindings/language_bindings.dart';
import 'package:biz/modules/language/views/language_view.dart';
import 'package:biz/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage<dynamic>> routes = [
    GetPage(
        name: Routes.login,
        page: () => LoginView(),
        binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.language,
      page: () => LanguageView(),
      binding: LanguageBindings(),
    ),
  ];
}