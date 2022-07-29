import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/routes.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: kPagePadding,
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Signup',
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
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Enter full name',
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter full name';
                            } else if (!RegExp(r'^[a-zA-Z]+(?:\s[a-zA-Z]+)+$')
                                .hasMatch(value)) {
                              return 'Please enter valid full name';
                            }
                            return null;
                          },
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Enter short name',
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter short name';
                            } else if (!RegExp(r'^[a-zA-Z]+$')
                                .hasMatch(value)) {
                              return 'Please enter valid short name';
                            }
                            return null;
                          },
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'Enter mobile no',
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter mobile no';
                            } else if (!RegExp(r'^[03][0-9]{10,}$')
                                .hasMatch(value)) {
                              return 'Please enter valid mobile no';
                            }
                            return null;
                          },
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key),
                            hintText: 'Enter Password',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.visibility),
                              onPressed: () => {},
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
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key),
                            hintText: 'Re-enter Password',
                            suffixIcon: IconButton(
                                icon: const Icon(Icons.visibility),
                                onPressed: () {}),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please re-enter password';
                            } else if (value.length < 7) {
                              return 'Please re-enter at least 8 characters password';
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
                              'Signup',
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
                                  text: 'Already have an account? ',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                TextSpan(
                                  text: 'Login',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.restorablePushReplacementNamed(
                                        context,
                                        RouteGenerator.login,
                                      );
                                    },
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
        ],
      ),
    );
  }
}
