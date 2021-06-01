import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc{
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para caucular o seu IMC!";

 calculate(){
   double weight = double.parse(weightCtrl.text);
   double height = double.parse(heightCtrl.text) / 100;
   double imc = weight / (height * height);

   if (imc < 18.5) {
    result = "MAGREZA";
   } else if (imc >= 18.5 && imc <= 24.9) {
    result = "NORMAL";
   } else if (imc >= 25.0 && imc <= 29.9) {
    result = "SOBREPESO";
   } else if (imc >= 30.0 && imc <= 39.9) {
    result = "OBESIDADE";
   } else if (imc >= 40.0) {
    result = "OBESIDADE GRAVE";
   }

 }


}