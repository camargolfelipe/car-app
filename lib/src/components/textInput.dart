import 'package:flutter/material.dart';
import 'package:mask/mask/mask.dart';
import 'package:template/src/utils/colors.dart';

class MoneyForm extends StatelessWidget {
  TextEditingController controller;
  String hint;
  MoneyForm(this.controller, this.hint, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(50), color: grey),
        child: TextFormField(
          controller: controller,
          inputFormatters: [Mask.money()],
          cursorColor: Colors.black,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: const EdgeInsets.all(8),
              hintText: hint),
        ));
  }
}

class KilometerPerLiterForm extends StatelessWidget {
  TextEditingController controller;
  String hint;
  KilometerPerLiterForm(this.controller, this.hint, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(50), color: grey),
        child: TextFormField(
          controller: controller,
          cursorColor: Colors.black,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              suffix: Text('Km/L'),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: const EdgeInsets.all(8),
              hintText: hint),
        ));
  }
}
