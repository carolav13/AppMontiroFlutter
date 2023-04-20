import 'dart:js';

import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:recomeco/view/tela_cadastro.dart';

import 'view/login_view.dart';
import 'view/splash_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MONTIRÕ',
      //
      // ROTAS DE NAVEGAÇÃO
      //
      initialRoute: 'splash',
      routes: {
        //'principal': (context) => LoginView(),
        //'detalhes': (context) => DetalhesView(),
        'splash': (context) => SplashView(),
        //'cadastro': (context) => CadastroUsuario(),
      },
    ),
  );
}