import 'package:customizedwidget/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
class Customwidgt extends StatefulWidget {
  const Customwidgt({Key? key}) : super(key: key);

  @override
  State<Customwidgt> createState() => _CustomwidgtState();
}

class _CustomwidgtState extends State<Customwidgt> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Custom Widget"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text('Elevated')),
          Center(
            child: RoundedButton(btnName: "Rounded button",
              icon:const Icon(Icons.add ,color: Colors.white,),
              textStyle: TextStyle(fontWeight: FontWeight.bold ) ,
              callBack: (){
              print("logg in!!");
              },
            ),
          ),
        ],
      )
    );
  }
}
