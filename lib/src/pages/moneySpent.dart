import 'package:flutter/material.dart';
import 'package:template/src/utils/colors.dart';
import 'package:template/src/utils/strings.dart';
import '../components/buttons.dart';
import '../components/textInput.dart';
import '../components/utils.dart';

class MoneySpent extends StatelessWidget {
  TextEditingController kmPerL = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Strings strings = Strings();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            strings.fill_fields,
            style: TextStyle(color: white, fontWeight: FontWeight.bold),
          ),
        ),
        KilometerPerLiterForm(kmPerL, 'Km/L do seu carro'),
        PrimaryButton('CONFIRMAR', () {
          if (kmPerL.text.isEmpty) {
            displayDialog(context, 'Preencha todos os campos.');
          } else {}
        }),
      ],
    );
  }
}
