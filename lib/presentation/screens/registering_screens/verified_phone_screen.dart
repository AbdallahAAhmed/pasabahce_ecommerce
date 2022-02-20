import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/presentation/widgets/primary_button.dart';

class VerifiedPhoneScreen extends StatelessWidget {
  const VerifiedPhoneScreen({ Key? key }) : super(key: key);

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
                          image: AssetImage('assets/images/verified_phone.png'),
                        ),
                        Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                    const Text(
                      'Phone Verified',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'Heavy',
                      ),
                    ),
                    Text(
                      'Congratulations, your phone number has been \nverified. You can now start using the app.',
                      style: TextStyle(
                        fontSize: 14,
                        color: MyColors.grey,
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
                      title: 'CONTINUE',
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