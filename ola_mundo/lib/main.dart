import 'package:flutter/cupertino.dart';

main() {
  runApp(AppWidget(title: 'Polo',));
}

class AppWidget extends StatelessWidget{
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return   Container(
                child: Center (
                  child: Text(
                    title, 
                    textDirection: TextDirection.ltr,
                    style: TextStyle( 
                      
                      fontSize: 50.0
                      ),
                  ),
                )
            );
  }
  
}
