import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (text){
                  email = text; 
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail'
                ),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (text){
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 15),
              RaisedButton(
                onPressed: (){
                  if (email == 'a' && password == '1'){
                    print('correto');
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => HomePage())
                    //   );

                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage())
                      );
                  } else {
                    print('Erros');
                  }
                }, 
                child: Text('Logar'),)
            ],
          ),
        ),
      )
    );
  }
}