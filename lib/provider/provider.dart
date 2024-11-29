import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeProvider extends ChangeNotifier{
  List spaceModelList = [];
  int index = 0, selectIndex = 0;
  List<String> addList=[];
  bool upAndDown = true;
  int myindex=0;

  void selectIndexMethod(String index)
  {
    bool value = true;
    for(int i = 0;i<addList.length;i++)
    {
      if(addList[i]==index)
      {
        value = false;
      }
    }
    if(value)
    {
      addList.add(index);
      shareMobileSet();
    }
    print(addList);
  }

  void removeList(int index)
  {
    addList.removeAt(index);
    shareMobileSet();
  }
  void update()
  {
    notifyListeners();
  }

  Future<void> shareMobileSet()
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setStringList('bookMark', addList);
  }
  Future<void> shareMobileGet()
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    addList = sharedPreferences.getStringList('bookMark') ?? [];
    print(addList);
    notifyListeners();
    // print(addList);
  }
}