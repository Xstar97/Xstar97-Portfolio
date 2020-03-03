import 'package:flutter/material.dart';

class Utils{

  Future<Navigator> pushReplacePage(BuildContext context, Object page){
    return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
  }
}