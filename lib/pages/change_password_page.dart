import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constants.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);
  final _globalKeyChangePasswordForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30.h,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                size: 30.w,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: kPagePadding,
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _globalKeyChangePasswordForm,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Change Password',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.key),
                            hintText: 'Old Password',
                            suffixIcon: Icon(Icons.visibility),
                          ),
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.key),
                            hintText: 'New Password',
                            suffixIcon: Icon(Icons.visibility),
                          ),
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.key),
                            hintText: 'Confirm New Password',
                            suffixIcon: Icon(Icons.visibility),
                          ),
                        ),
                        kPageItemSpacing4,
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Change Password',
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                        ),
                        kPageItemSpacing2,
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
