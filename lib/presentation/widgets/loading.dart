import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key, this.initalRoute}) : super(key: key);

  final String? initalRoute;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacementNamed(widget.initalRoute!));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: MyColors.brown,
            ),
            const SizedBox(height: 20),
            Text(
              'LOADING',
              style: TextStyle(
                fontSize: 13,
                color: MyColors.brown,
                fontFamily: 'Medium',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
