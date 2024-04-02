import 'package:blogspoter/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthGradientButton extends StatelessWidget {
  final String pageType;
  const AuthGradientButton({super.key, required this.pageType});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [AppPallete.gradient1, AppPallete.gradient2],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
          borderRadius: BorderRadius.circular(9)),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: AppPallete.transparentColor,
            shadowColor: AppPallete.transparentColor),
        child: Text(pageType),
      ),
    );
  }
}
