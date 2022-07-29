import 'package:flutter/material.dart';
import 'package:login_ui/components/text_field_container.dart';

import '../constants.dart';


class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key, required this.onPress,
  }) : super(key: key);

  final ValueChanged<String> onPress;

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
        child: TextField(
          onChanged: onPress,
          obscureText: true,//隐藏密码
          decoration: const InputDecoration(
              icon: Icon(Icons.lock,color: kPrimaryColor),
              hintText: "密码",
              suffixIcon: Icon(Icons.visibility,color: kPrimaryColor),
              border: InputBorder.none
          ),
        )
    );
  }
}
