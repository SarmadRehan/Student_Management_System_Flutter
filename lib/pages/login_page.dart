import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPagePadding,
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    kPageItemSpacing2,
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.pin),
                        hintText: 'Enter cnic no',
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter cnic no';
                        } else if (!RegExp(r'^(\d{13})$').hasMatch(value)) {
                          return 'Please enter 13 digits valid cnic no';
                        }
                        return null;
                      },
                    ),
                    kPageItemSpacing2,
                    TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.key),
                        hintText: 'Enter Password',
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        } else if (value.length < 7) {
                          return 'Please enter at least 8 characters password';
                        } else if (value.length > 12) {
                          return 'Please enter at most 12 characters password';
                        }
                        return null;
                      },
                    ),
                    kPageItemSpacing4,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ),
                    kPageItemSpacing2,
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have an account? ',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            TextSpan(
                              text: 'Register',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    Navigator.restorablePushReplacementNamed(
                                      context,
                                      RouteGenerator.signup,
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
