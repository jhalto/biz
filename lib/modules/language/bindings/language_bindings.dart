import 'package:biz/modules/language/cotrollers/language_controller.dart';
import 'package:get/get.dart';

class LanguageBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LanguageController>(() => LanguageController(),);
  }
}