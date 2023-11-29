

import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  int selectedTab = 0;

  void selectedPage(int index){
    selectedTab = index;
    notifyListeners();
  }

}