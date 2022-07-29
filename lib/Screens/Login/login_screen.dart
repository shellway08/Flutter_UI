import 'package:flutter/material.dart';
import 'component/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      //resizeToAvoidBottomInset: false,//解决软键盘向上顶起布局的问题
      body: Body(),
    );
  }
}
