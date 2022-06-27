import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:template/src/pages/gasPrice.dart';
import 'package:template/src/pages/moneySpent.dart';
import 'package:template/src/utils/colors.dart';
import '../components/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isFirst = true;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: ListView(children: [
        Lottie.asset('assets/car-moving.json',
            height: MediaQuery.of(context).size.height * 0.3),
        Container(
            margin: const EdgeInsets.all(28.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: secondColor),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TopButton('Gasolina vs Álcool', isFirst, () {
                      setState(() {
                        isFirst = !isFirst;
                      });
                    }),
                    TopButton('Quanto gasto?', !isFirst, () {
                      setState(() {
                        isFirst = !isFirst;
                      });
                    })
                  ],
                ),
                Divider(color: mainColor),
                Visibility(visible: isFirst, child: GasPrice()),
                Visibility(visible: !isFirst, child: MoneySpent())
              ],
            ))
      ]),
    );
  }
}

class TopButton extends StatelessWidget {
  String label;
  bool isFirst;
  void Function()? function;
  TopButton(this.label, this.isFirst, this.function, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isFirst ? thirdColor : secondColor,
            border: Border.all(color: thirdColor, width: 2)),
        child: Text(
          label,
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
