import 'package:big_deals/view/colors.dart';
import 'package:flutter/material.dart';
import 'package:big_deals/view/components/text_field_container.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: AppColors.kPrimaryColor,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: AppColors.kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: AppColors.kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
