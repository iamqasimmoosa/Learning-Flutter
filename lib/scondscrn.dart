import 'package:customizedwidget/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import 'customwidg.dart';
class ScndScr extends StatefulWidget {
  const ScndScr({Key? key}) : super(key: key);

  @override
  State<ScndScr> createState() => _ScndScrState();
}

class _ScndScrState extends State<ScndScr> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text(" Second Screen"),
        ),
        body: Column(
          children: [
            Text("WellCome", style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {return Customwidgt(); },));
                }, child: Text("abc"))
          ],
        )
    );
  }
}
