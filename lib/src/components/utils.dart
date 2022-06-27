import 'package:flutter/material.dart';
import 'package:template/src/components/buttons.dart';

void displayDialog(context, String label) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Text(label),
        actions: <Widget>[
          PrimaryButton('Confirmar', () {
            Navigator.pop(context);
          })
        ],
      );
    },
  );
}
