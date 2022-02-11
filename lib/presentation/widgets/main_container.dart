import 'package:flutter/material.dart';

Widget mainContainer({required Widget child}) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    margin: const EdgeInsets.only(top: 20),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
    ),
    child: child,
  );
}
