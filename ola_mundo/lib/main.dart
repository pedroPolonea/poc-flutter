import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: 'Polo',));
}

class AppWidget extends StatelessWidget{
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: HomePage(),
    );
  }

}

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
    return Container(
        child: Center(
          child: GestureDetector(
            child:  Text('Polo $cont'),
            onTap: (){
              setState(() {
                cont++;
              });
            },
            )
        )
      );
  }

}

