import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/presentation/widgets/primary_button.dart';

class ForgetPasswordSentScreen extends StatelessWidget {
  const ForgetPasswordSentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundColor: Color(0XFFF7F7F7),
                        ),
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Color(0XFFFFFFFF),
                        ),
                        Image(
                          width: 140,
                          height: 140,
                          image: AssetImage('assets/images/sent.png'),
                        ),
                      ],
                    ),
                    const Text(
                      'Check your email',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'Heavy',
                      ),
                    ),
                    const Text(
                      'We\'ve sent you instructions on how to reset the \npassword (also check the Spam folder).',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    primaryButton(
                      backgroundColor: MyColors.brown,
                      title: 'OPEN MY MAIL CLIENT',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
