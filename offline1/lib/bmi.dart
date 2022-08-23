import"package:flutter/material.dart";
import 'package:offline1/men_and_wman/men_or_wman.dart';
import 'package:offline1/style/colors.dart';
import 'package:offline1/wight_and_age/wight_and_age.dart';
class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _bmiState();
}

class _bmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors().main_colors,
      appBar: AppBar(
        backgroundColor: colors().main_colors,
        elevation: 0,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            men_or_wman(),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: double.infinity,
                height: 200,
                color: colors().scand_colors,
              ),
            ),
            wight_and_age(),
          ],
        ),
      ),
    );
  }
}
