import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/Screens/Login/login_screen.dart';
import 'package:login_ui/Screens/Signup/signup_screen.dart';
import 'package:login_ui/constants.dart';
import '../../../components/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text("欢迎使用IM系统",style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: size.height*0.05),
          SvgPicture.asset("assets/icons/chat.svg",height: size.height * 0.45,),
          SizedBox(height: size.height*0.05),
          RoundedButton(
              text: "登陆",
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const LoginScreen();
                }));
              }),
          RoundedButton(
              text: "注册",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SignUpScreen();
                }));
              }),

        ],
    ),
      ),);
  }
}




