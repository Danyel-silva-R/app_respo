
import 'package:app_repositorio/widgets/theme/themer_ligt.dart';
import 'package:flutter/material.dart';

class ThemerMenager with ChangeNotifier {
  ThemeData _themeData = lightTheme;

  // Getter para obter o tema atual
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
   if(_themeData == lightTheme ){
    themeData = darkTheme;
   }else{
    themeData =lightTheme; 
   } 
  }
}
