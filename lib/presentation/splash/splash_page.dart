import 'package:amur/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SplashContent(),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Image.asset('assets/images/logo_nvbs.png'),
      ),
    );
  }
}
