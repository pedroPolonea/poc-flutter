import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SingleChildScrollView(
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
                  Image.asset('assets/images/f1.png')
              ),
              SizedBox(height: 10),
              Card(child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
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
                        color: Colors.blue[100],
                        onPressed: (){
                          if (email == 'a' && password == '1'){
                            print('correto');
                            //Navigator.of(context).pushReplacementNamed('/home');
                            Navigator.of(context).pushNamed('/home');
                          } else {
                            print('Erros');
                          }
                        }, 
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Logar',
                            textAlign: TextAlign.center,
                            ),
                        ), 
                      )
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                  'assets/images/ab1.jpg',
                  fit: BoxFit.cover,
                ),
            ),
            Container(
              color: Colors.black.withOpacity(0.1)
            ),
            _body()
        ],
      )
    );
  }
}