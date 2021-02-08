import 'package:conversor_curso/app/componentes/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100, 
            left: 20, 
            right: 20, 
            bottom: 20,
          ),
          child: Column(
            children: [ 
              Image.asset(
                'assets/cm.jpg', 
                width: 200, 
                height: 200,
              ),
              SizedBox(height:10 ,),
              CurrencyBox(),
              SizedBox(height:10 ,),
              CurrencyBox(),
              SizedBox(height:10 ,),
              RaisedButton(
                color: Colors.amber,
                onPressed: (){},
                child: Text('CONVERTER'),           
              )
            ],
          ),
        ),
      )
    );
  }
  
}