import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/constraints/route_string.dart';
import 'package:pasabahce/presentation/widgets/loading.dart';
import 'package:pasabahce/presentation/widgets/primary_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  Widget _buildPinCodeFields(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      length: 4,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        activeColor: MyColors.grey,
        inactiveColor: MyColors.grey,
        selectedColor: MyColors.brown,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      onCompleted: (submittedCode) {
        // otpCode = submittedCode;
        // print("Completed");
      },
      showCursor: false,
      onChanged: (value) {
        // ignore: avoid_print
        print(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Enter The 4 digit code sent to :',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontFamily: 'Heavy',
                    ),
                  ),
                  Text(
                    '1 222 555 6677',
                    style: TextStyle(
                      fontSize: 30,
                      color: MyColors.brown,
                      fontFamily: 'Heavy',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'We\'ve sent 4 digit code to your phone number. \nPlease enter the verification code.',
                    style: TextStyle(
                      fontSize: 14,
                      color: MyColors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              _buildPinCodeFields(context),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Didn\'t receive the SMS?',
                            style: TextStyle(
                              color: MyColors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Text(
                          'Request new code in 00:00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            wordSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    primaryButton(
                      backgroundColor: MyColors.brown,
                      title: 'REQUEST NEW CODE',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const LoadingScreen(initalRoute: verifiedPhoneRoute,),
                          ),
                        );
                      },
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
