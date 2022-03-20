import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../theme.dart';

class InputField extends StatelessWidget {
  const InputField(
      {Key? key,
      this.controller,
      this.validator,
      required this.icon,
      required this.label,
      this.obscureText = false})
      : super(key: key);
  final IconData icon;
  final TextEditingController? controller;
  // ignore: prefer_typing_uninitialized_variables
  final validator;
  final String label;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 352,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(icon, size: 20),
            labelText: label,
            labelStyle: subtitleStyle,
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1))),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: AppColors.mainGreen),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: AppColors.mainGreen),
              borderRadius: BorderRadius.circular(5),
            )),
      ),
    );
  }
}
