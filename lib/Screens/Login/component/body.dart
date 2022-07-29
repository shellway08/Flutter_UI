
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/Screens/Signup/signup_screen.dart';
import 'package:login_ui/components/rounded_button.dart';
import 'package:login_ui/constants.dart';
import '../../../components/AlreadHaveAnAccountCheck.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import 'Background.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Text("登陆",style: TextStyle(fontWeight: FontWeight.bold)),
             SizedBox(height: size.height*0.03),
             SvgPicture.asset("assets/icons/login.svg",height: size.height*0.35),
             RoundedInputField(
              icon: Icons.person,
              hintText: "用户名",
              onChanged: (value){
                debugPrint(value);
              }
            ),
            RoundedPasswordField(onPress: (value){}),
            RoundedButton(
                text: "登陆",
                press: (){}
            ),
            SizedBox(height: size.height*0.03),
            AlreadyHaveAnAccountCheck(press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const SignUpScreen();
              }));
            })
        ],
      ),),
    );
  }
}
