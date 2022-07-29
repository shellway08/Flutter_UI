import 'package:flutter/material.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //resizeToAvoidBottomInset: false,//解决软键盘向上顶起布局的问题
      body: Body(),
    );
  }
}
