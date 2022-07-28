import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child,}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size; //屏幕的宽高对象
    return Container(
      width: double.infinity, //占满屏幕的宽
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            //最左上角
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.3, //屏幕的1/3宽
              )
          ),
          Positioned(
            //最左下角
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.2, //屏幕的1/3宽
              )
          ),
          child,
        ],
      ),
    );
  }
}