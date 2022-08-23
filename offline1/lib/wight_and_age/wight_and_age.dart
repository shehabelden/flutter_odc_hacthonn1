import 'package:flutter/material.dart';
import 'package:offline1/style/colors.dart';
import 'package:offline1/wight_and_age/age.dart';
import 'package:offline1/wight_and_age/wight.dart';
class wight_and_age extends StatefulWidget {
  const wight_and_age({Key? key}) : super(key: key);

  @override
  State<wight_and_age> createState() => _wight_and_ageState();
}

class _wight_and_ageState extends State<wight_and_age> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          age(),
          wight(),
        ],
      ),
    );
  }
}
