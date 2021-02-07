import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset('assets/cm.jpg'),
            Row(
              children: [
                Expanded(
                  child: DropdownButton(
                    items: [], 
                    onChanged: (value){},
                  )
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(),
                  )
                )
              ],
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('CONVERTER'),           
            )
            
          ],
        ),
      )
    );
  }
  
}