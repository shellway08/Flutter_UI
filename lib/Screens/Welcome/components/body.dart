import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
         const Text("欢迎来到IM系统",style: TextStyle(fontWeight: FontWeight.bold),),
        SvgPicture.asset("assets/icons/chat.svg",height: size.height * 0.45,),
        RoundedButton(
            text: "登陆",
            press: (){
              debugPrint("被点击了");
            })
      ],
    ),);
  }
}




