import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/presentation/widgets/main_container.dart';
import 'package:pasabahce/presentation/widgets/primary_button.dart';
import 'package:pasabahce/presentation/widgets/text_form_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Reset Password'),
        centerTitle: true,
      ),
      body: mainContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      'Forget your password?',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Enter your email address and we will send you  instructions on how to reset your password.',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        wordSpacing: 2,
                        fontSize: 14,
                        color: MyColors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: buildTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    lableText: 'Email Address',
                    valid: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please, Enter your email address';
                      }
                    },
                  ),
                ),
              ],
            ),
            primaryButton(
              backgroundColor: MyColors.brown,
              title: 'RECOVER EMAIL',
              onTap: (){
                if(_formKey.currentState!.validate()){
                  // do somethig
                }
              }
            ),
          ],
        ),
      ),
    );
  }
}
