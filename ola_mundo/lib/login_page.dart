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
              Container(
                height: 300,
                width: 300,
                child: 
                  Image.network('https://www.pngkey.com/png/full/314-3143780_transmutation-circle-stickers-by-th3lord-fullmetal-alchemist-brotherhood.png')
                ),
              SizedBox(height: 10),
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
                    //Navigator.of(context).pushReplacementNamed('/home');
                    Navigator.of(context).pushNamed('/home');
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