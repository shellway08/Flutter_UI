import 'package:flutter/material.dart';

import '../constants.dart';


class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key, required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.8,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}