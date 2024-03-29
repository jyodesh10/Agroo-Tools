import 'package:agrotools/constant/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final Color? color;
  const MyButton(
      {Key? key, required this.label, required this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: color ?? AppColors.mainGreen,
          ),
          child: Text(label,
              style: TextStyle(
                  fontSize: 20,
                  color: color != null ? AppColors.mainGreen : Colors.white))),
    );
  }
}
