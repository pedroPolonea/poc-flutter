
import 'package:flutter/material.dart';

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
      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Center(
            child: Container(
            height: 100,
            width: 100,
            color: Colors.cyan,
          )
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


