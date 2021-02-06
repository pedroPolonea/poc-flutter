
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.network('https://media-exp1.licdn.com/dms/image/C4E03AQFnpwz4c_0dgQ/profile-displayphoto-shrink_200_200/0/1517271295579?e=1617840000&v=beta&t=ehBs5Rf3PR0uaZciQxCB4MhbGkzyxudhC23tEzUsWEY'),
              accountName: Text('Polo'), 
              accountEmail: Text('Polo@p')
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('tela de inicio'),
              onTap: (){
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Lgout'),
              subtitle: Text('Finalizar sessão'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('App'),
        actions: [CustomSwitch(),],
      ),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Text('Contador: $cont'),
              CustomSwitch(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.indigo,
                  ),
                ],
              )
            ],
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

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value){
            AppController.instance.changeTheme();
            print(value);
          },
        );
  }
}
