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

        
        logo: const Image(
          

        
          image: AssetImage(
            "lib/images/logoNF.png",
          ),
        ),




        title: const Text(
          'Bem-vindo ao Montirõ',
          style: TextStyle(fontSize: 18.0, fontFamily: AutofillHints.url),
        ),
        backgroundColor: Color(0xFFF7F7A4),
        showLoader: true,
        loadingText: const Text(
          'Carregando...',
          style: TextStyle(fontSize: 16.0),
        ),
        navigator: LoginView(),
        durationInSeconds: 1,
      ),
    );
  }
}
