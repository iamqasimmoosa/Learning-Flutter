import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButton({
    super.key,
    required this.btnName,
    this.icon,
    this.bgcolor = Colors.green,
    this.textStyle,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: () {
          callBack!();
        },
        child: icon != null
            ? Row(
          mainAxisSize: MainAxisSize.min,
                children: [
                  icon!,
                  Text(
                    btnName,
                    style: textStyle,
                  )
                ],
              )
            : Text(
                btnName,
                style: textStyle,
              ),
    style: ElevatedButton.styleFrom(
      backgroundColor: bgcolor,
       shadowColor: bgcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(21),
              topRight: Radius.circular(21),
        )
      )
    ),
    );
  }
}
