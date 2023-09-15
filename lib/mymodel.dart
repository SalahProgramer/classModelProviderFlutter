import 'package:flutter/material.dart';

class myModel extends ChangeNotifier{
  int number=0;
  String name="salah";


  inc(){

    number++;
    notifyListeners();
  }
  changeName(){

    name="yaaqba";
    notifyListeners();
  }
}
