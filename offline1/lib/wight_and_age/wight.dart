import 'package:flutter/material.dart';

import '../style/colors.dart';
class wight extends StatefulWidget {
  const wight({Key? key}) : super(key: key);

  @override
  State<wight> createState() => _wightState();
}

class _wightState extends State<wight> {
  @override
  int wight=60;
  Widget build(BuildContext context) {
    return Container(
      height:230,
      width: 200,
      color: colors().scand_colors,
      child:Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child:Text("WEIGHT",style: TextStyle(
                color: Colors.white.withOpacity(0.4),
                fontSize: 40,
              ),) ,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child:Text("${wight}",style: TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),) ,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      width: 70,
                      alignment: Alignment.center,
                      color:colors().button,
                      child:Text("+",style: TextStyle(
                        fontSize: 40,
                      ),) ,
                    ),
                    onTap: (){
                      setState(() {
                        wight++;
                      });
                    },
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        wight--;
                      });
                    },
                    child: Container(
                      color: colors().button,
                      alignment: Alignment.center,
                      width: 70,
                      child:Text("-",style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),) ,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
