
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String text;
  final Function press;
  final Color color, textColor;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      width: size.width * 0.8, //按钮宽度占屏幕 80%
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
            color: color,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            onPressed: press as void Function()?,
            child: Text(text, style: TextStyle(color: textColor))
        ),
      ),
    );
  }
}