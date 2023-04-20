import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:recomeco/view/login_view.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image(
          image: AssetImage("lib/images/logoNF.png"),
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        title: const Text(
          'Bem-vindo ao Montirõ',
          style: TextStyle(
              fontSize: 15.0,
              color: Color.fromARGB(255, 111, 7, 0),
              fontFamily: AutofillHints.url),
        ),
        backgroundColor: Color.fromARGB(255, 245, 248, 186),
        showLoader: true,
        loadingText: const Text(
          'Carregando...',
          style: TextStyle(
              fontSize: 16.0, color: Color.fromARGB(255, 142, 91, 89)),
        ),
        navigator: LoginView(),
        durationInSeconds: 1,
      ),
    );
  }
}
