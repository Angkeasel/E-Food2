import 'package:efood2/route/route.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  AppRouter appRoute = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRoute.defaultRouteParser(),
      routerDelegate: appRoute.delegate(),
    );
  }
}
