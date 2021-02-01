
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomePageState();    
  }

}

class HomePageState extends State<HomePage>{
  int cont = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value){
            AppController.instance.changeTheme();
            print(value);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
           setState(() {
              cont++;
            });
        },
      ),
    );
  }

}


