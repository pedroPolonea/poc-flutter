import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController toFrom = TextEditingController();

  final homeController = HomeController(toText, toFrom);

  test('deve converter de real para dolar', (){
    toText.text = '2.0';
    homeController.convert();
    expect(toFrom.text, '0.36');
  });

  
}