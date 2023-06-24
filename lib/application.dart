import 'package:fluro/fluro.dart';
import "package:flutter/material.dart";
// import "package:flutter_application_1/pages/home/index.dart";
// import "package:flutter_application_1/pages/login.dart";
import "package:flutter_application_1/routes.dart";

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    FluroRouter router=FluroRouter();
    Routes.configureRouters(router);
    
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      onGenerateRoute: router.generator,
    );
  }
}