import 'package:blogspoter/core/theme/app_pallet.dart';
import 'package:blogspoter/feature/auth/domain/auth_methods.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String pageType;
  final bool isSignUp;

  const AuthGradientButton(
      {super.key, required this.pageType, this.isSignUp = false});

  @override
  Widget build(BuildContext context) {
    Firebase_Auth_Functions auth = Firebase_Auth_Functions();
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [AppPallete.gradient1, AppPallete.gradient2],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
          borderRadius: BorderRadius.circular(9)),
      child: ElevatedButton(
        onPressed: () {
          if (isSignUp) {
            auth.signUpWithEmailPassword();
          }
          auth.signInWithEmailPass();
        },
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: AppPallete.transparentColor,
            shadowColor: AppPallete.transparentColor),
        child: Text(pageType),
      ),
    );
  }
}
