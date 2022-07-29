import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/Screens/Login/login_screen.dart';
import 'package:login_ui/components/AlreadHaveAnAccountCheck.dart';
import 'package:login_ui/components/rounded_button.dart';
import 'package:login_ui/components/rounded_input_field.dart';
import 'package:login_ui/components/rounded_password_field.dart';
import 'package:login_ui/constants.dart';
import '../../../components/or_divider.dart';
import '../../../components/social_icon.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("注册",style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height*0.03),
            SvgPicture.asset("assets/icons/signup.svg",height: size.height*0.35),
            RoundedInputField(hintText: "用户名", icon: Icons.person,
                onChanged: (value){}
            ),
            RoundedPasswordField(onPress: (value){

            }),
            RoundedButton(text: "注册", press: (){}),
            SizedBox(height: size.height*0.03),
            AlreadyHaveAnAccountCheck(login:false,press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const LoginScreen();
              }));
            }),
            // const OrDivider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SocialIcon(iconSrc: "assets/icons/twitter.svg",press: (){}),
            //     SocialIcon(iconSrc: "assets/icons/facebook.svg",press: (){}),
            //     SocialIcon(iconSrc: "assets/icons/google-plus.svg",press: (){})
            //   ],
            // )
          ],
      ),),
    );
  }
}
