import 'package:flutter/material.dart';
import 'package:routing/Signup_page.dart';
import 'Route_name.dart';
import 'login_page.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',
      initialRoute: RouteName.signup,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

