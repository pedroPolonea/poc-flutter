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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 56,
                        child: DropdownButton(
                          isExpanded: true,
                          underline: Container(
                            height: 1,
                            color: Colors.amber,
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('Real')
                            ),
                            DropdownMenuItem(
                              child: Text('Dolar')
                            ),
                          ], 
                          onChanged: (value){},
                        ),
                      )
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.amber
                            )
                          ),
                          focusedBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.amber
                            )
                          ),
                        ),
                      )
                    )
                  ],
                ),
              ),
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