import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/constraints/route_string.dart';
import 'package:pasabahce/presentation/widgets/main_container.dart';
import 'package:pasabahce/presentation/widgets/primary_button.dart';
import 'package:pasabahce/presentation/widgets/text_form_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool checkBoxValue = false;
  bool visibilityPassword = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: mainContainer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Let\'s sign you in',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Welcome back, you\'ve been missed!',
                      style: TextStyle(
                        fontSize: 14,
                      ),
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
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        lableText: 'Username or email',
                        valid: (value) {
                          if (value!.isEmpty) {
                            return 'Please fill the username or email';
                          }
                        },
                      ),
                      buildTextFormField(
                        controller: passwordController,
                        obscureText: visibilityPassword ? null : true,
                        keyboardType: TextInputType.text,
                        lableText: 'Password',
                        valid: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return 'Please fill the Password';
                          }
                        },
                        suffix: IconButton(
                          icon: Icon(
                             visibilityPassword ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: (){
                            setState(() {
                              visibilityPassword = !visibilityPassword;
                            });
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: checkBoxValue,
                                activeColor: MyColors.brown,
                                onChanged: (_) {
                                  setState(() {
                                    checkBoxValue = !checkBoxValue;
                                  });
                                },
                              ),
                              const Text(
                                'Remember me',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pushNamed(forgetPasswordRoute),
                            child: const Text(
                              'Forget Password?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            ),
                          ),
                        ],
                      ),
                      primaryButton(
                        backgroundColor: MyColors.brown,
                        title: 'SIGN IN',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // do something
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height/4,
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
                          onPressed: () => Navigator.of(context).pushReplacementNamed(registerRoute),
                          child: const Text(
                            'Sign Up',
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
