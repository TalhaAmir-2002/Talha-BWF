import 'package:flutter/material.dart';
import 'Signup_page.dart';
import 'login_page.dart';
import 'package:routing/Route_name.dart';
import 'login_succeed.dart';

class Routes{
  static Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.login:
        return MaterialPageRoute(builder: (context)=>  Login(info:  settings.arguments,));
      case RouteName.signup:
        return MaterialPageRoute(builder: (context)=> Signup());
      case RouteName.sucess:
        return MaterialPageRoute(builder: (context)=> const sucess());

    }
    throw Null;
  }
}