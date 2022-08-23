import 'package:flutter/material.dart';
class men_or_wman extends StatefulWidget {
  const men_or_wman({Key? key}) : super(key: key);

  @override
  State<men_or_wman> createState() => _men_or_wmanState();
}

class _men_or_wmanState extends State<men_or_wman> {
  @override
  bool code=true;
  Color one=Colors.grey.shade900;
  Color tow=Colors.white;
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                alignment: Alignment.center,
                width: 800,
                height: 200,
                child:const Text("men",
                    style:TextStyle(fontSize: 20,)
                ),
                color: one,
              ),
              onTap: (){
                setState((){
                  code=false;
                  if(code==false){
                    one=Colors.grey;
                    tow=Colors.white;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 200,
              child: Text("wman", style: TextStyle(fontSize: 20,),),
              color: tow,
            ),
            onTap: (){
              setState(() {
                code=true;
                if(code==true){
                  one=Colors.white;
                  tow=Colors.grey;
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
