import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template/src/utils/colors.dart';
import 'package:template/src/utils/strings.dart';
import '../components/buttons.dart';
import '../components/textInput.dart';
import '../components/utils.dart';

class GasPrice extends StatelessWidget {
  TextEditingController gasolina = TextEditingController();
  TextEditingController alcool = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Strings strings = Strings();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            strings.insert_gas_price,
            style: TextStyle(color: white, fontWeight: FontWeight.bold),
          ),
        ),
        MoneyForm(gasolina, 'Gasolina'),
        MoneyForm(alcool, 'Álcool'),
        PrimaryButton('CONFIRMAR', () {
          if (gasolina.text.isEmpty || alcool.text.isEmpty) {
            displayDialog(context, 'Preencha todos os campos.');
          } else {
            calculatePrice(context, gasolina.text, alcool.text);
          }
        }),
      ],
    );
  }
}

void calculatePrice(context, gas, alc) {
  var gasolina = removeMask(gas);
  var alcool = removeMask(alc);
  var result = double.parse(gasolina) / double.parse(alcool);
  if (result > 0.7) {
    displayDialog(context, 'GASOLINA vale a pena');
  } else {
    displayDialog(context, 'ÁLCOOL vale a pena');
  }
}

removeMask(str) {
  String removeMask = str.substring(3);
  String replaceDot = removeMask.replaceAll(',', '.');
  return replaceDot;
}
