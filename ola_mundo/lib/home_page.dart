
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
      body: Center(
        child: GestureDetector(
          child:  Text(
            'Polo $cont',
            style: TextStyle(
              fontSize: 20
            ),
          ),
          onTap: (){
            setState(() {
              cont++;
            });
          },
        )
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


