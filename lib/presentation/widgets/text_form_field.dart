import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';

Widget buildTextFormField({
  required TextEditingController controller,
  required String lableText,
  bool? obscureText,
  required String? Function(String?) valid,
  TextInputType? keyboardType,
  Widget? suffix,
}) {
  return TextFormField(
    controller: controller,
    cursorColor: MyColors.brown,
    decoration: InputDecoration(
      suffixIcon: suffix,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: MyColors.brown),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: MyColors.grey),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      labelText: lableText,
      labelStyle: const TextStyle(
        color: Colors.black,
      ),
    ),
    keyboardType: keyboardType,
    validator: valid,
    obscureText: obscureText != null ? true : false,
  );
}
