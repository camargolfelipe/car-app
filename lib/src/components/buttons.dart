import 'package:flutter/material.dart';
import 'package:template/src/utils/colors.dart';
import 'package:template/src/utils/routes.dart';

class PrimaryButton extends StatelessWidget {
  Function()? function;
  String label;
  PrimaryButton(this.label, this.function, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: thirdColor),
      child: TextButton(
          onPressed: function,
          child: Text(
            label,
            style: TextStyle(color: white),
          )),
    );
  }
}
