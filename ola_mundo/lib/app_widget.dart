import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // ignore: missing_return
      animation: AppController.instance,
      builder: (context, chid){
         return MaterialApp(
            home: HomePage(),
            theme: ThemeData(
              primaryColor: Colors.red,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
            ),
        );
      }
    );
  }

}