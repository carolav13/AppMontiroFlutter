import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'view/splash_view.dart';
import 'package:recomeco/view/configuracao.dart';
import 'package:recomeco/view/home.dart';
import 'package:recomeco/view/perfil_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      title: 'MONTIRÕ',
      //
      // ROTAS DE NAVEGAÇÃO
      //
      initialRoute: 'splash',
      routes: {
        'splash': (context) => SplashView(),
        //'cadastro': (context) => CadastroUsuario(),
        '/home': (context) => HomeScreen(),
        '/perfil': (context) => PerfilScreen(),
        '/configuracoes': (context) => ConfiguracoesScreen(),
      },
    );
  }
}
