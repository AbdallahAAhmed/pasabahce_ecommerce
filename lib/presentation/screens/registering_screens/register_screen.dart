import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/constraints/route_string.dart';
import 'package:pasabahce/presentation/widgets/primary_button.dart';
import 'package:pasabahce/presentation/widgets/text_form_field.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.height.toInt());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'REGISTER',
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Create Your Account',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'After your registration is complete \nyou can see our oppartunity products',
                      style: TextStyle(
                        fontSize: 14,
                        color: MyColors.grey,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height/2,
                width: double.infinity,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildTextFormField(
                        controller: usernameController,
                        keyboardType: TextInputType.text,
                        lableText: 'Username',
                        valid: (value) {
                          if (value!.isEmpty) {
                            return 'Please fill the username';
                          }
                        },
                      ),
                      // const SizedBox(height: 20),
                      buildTextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        lableText: 'Email',
                        valid: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Please fill the email address';
                          }
                        },
                      ),
                      // const SizedBox(height: 20),
                      buildTextFormField(
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        lableText: 'Password',
                        valid: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return 'Please fill the Password';
                          }
                        },
                        suffix: const Icon(
                          Icons.visibility_off,
                        ),
                      ),
                      // const SizedBox(height: 20),
                      buildTextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        lableText: 'Phone',
                        valid: (value) {
                          if (value!.isEmpty) {
                            return 'Please fill the Phone';
                          }
                        },
                      ),
                      primaryButton(
                          backgroundColor: MyColors.brown,
                          title: 'SIGN UP',
                          onTap: (){
                            if(_formKey.currentState!.validate()){
                                Navigator.of(context).pushNamed(loadingScreen);
                            }
                          }
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height.toInt() >= 700 ? size.height/5  : null,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    primaryButton(
                      backgroundColor: Colors.white,
                      title: 'Continue with Google',
                      titleColor: Colors.red,
                      borderColor: Colors.red,
                    ),
                    SizedBox(height: size.height.toInt() <= 683 ? 10 : null),
                    primaryButton(
                      backgroundColor: Colors.white,
                      title: 'Continue with Facebook',
                      titleColor: Colors.blue,
                      borderColor: Colors.blue,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pushReplacementNamed(loginScreen),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
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
