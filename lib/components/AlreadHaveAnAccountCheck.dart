import 'package:flutter/material.dart';

import '../constants.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  const AlreadyHaveAnAccountCheck({
    Key? key,this.login = true, required this.press,
  }) : super(key: key);

  final bool login;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              login ? "还没有账户？" : "已经有账户？",
              style: const TextStyle(color: kPrimaryColor)),
          Text(
              login ? "去注册" : "去登陆",
              style: const TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}

