import 'package:flutter/material.dart';
import 'package:login_ui/components/text_field_container.dart';

import '../constants.dart';


class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key, required this.hintText, required this.icon, required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child:TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
              icon: Icon(
                icon,
                color: kPrimaryColor,
              ),
              hintText: hintText,
              border: InputBorder.none
          ),
        )
    );
  }
}
