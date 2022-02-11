import 'package:flutter/material.dart';

Widget primaryButton(
  {
    required Color backgroundColor,
    Color? borderColor,
    required String title,
    Color? titleColor,
    Function()? onTap,
  }
) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 270,
        height: 45,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: titleColor ?? Colors.white,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          border: Border.all(color: borderColor ?? Colors.white, width: 1.5),
        ),
      ),
    );
  }