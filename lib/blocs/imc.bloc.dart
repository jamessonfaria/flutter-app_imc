import 'package:extended_masked_text/extended_masked_text.dart';

class imcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc = weight / (height * height);

    if(imc < 18.6) {
      result = "Abaixo do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Peso ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 29.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 29.9 && imc <= 34.9) {
      result = "Obesidade grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Obesidade grau II (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Obesidade grau III (${imc.toStringAsPrecision(2)})";
    }

  }

}