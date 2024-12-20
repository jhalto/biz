import 'dart:ui';

class Ui{

  static Color parseColor(String hexCode, {double? opacity}){
    try {
         return Color(int.parse(hexCode.replaceAll("#", "0xff")))
             .withOpacity(opacity??1);
    }catch(e){
        return Color(0xFFCCCCCC).withOpacity(opacity??1);
    }
  }
}