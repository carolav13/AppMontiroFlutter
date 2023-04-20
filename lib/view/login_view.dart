import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recomeco/view/sobre.dart';

import './tela_cadastro.dart';
import './recuperar_senha.dart';
import './perfil_page.dart';

//import 'package:local_auth/local_auth.dart';

final cpfController = TextEditingController();
final senhaController = TextEditingController();

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  "lib/images/background.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutScreen()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/images/logoNF.png",
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.only(top: 200),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(62),
                      topRight: Radius.circular(62),
                    ),
                  ),
                  child: SingleChildScrollView(
                    reverse: false,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: TextField(
                              controller: cpfController,
                              decoration: InputDecoration(
                                hintText: 'CPF',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 111, 7, 0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextField(
                          controller: senhaController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Senha',
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 111, 7, 0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),

//Botão ACESSAR
                        ElevatedButton(
                          onPressed: () {
                            if (senhaController.text.isNotEmpty &&
                                cpfController.text.isNotEmpty) {
                              // A soma dos dígitos do CPF deve ser iguais a 33, 44, 55 ou 66
                              final cpf = cpfController.text;
                              final isCpfValid = cpf.length == 11 &&
                                  RegExp(r'^\d{11}$').hasMatch(cpf) &&
                                  [33, 44, 55, 66].contains(
                                    cpf
                                        .split('')
                                        .map(int.parse)
                                        .reduce((a, b) => a + b),
                                  );

                              if (!isCpfValid) {
                                // CPF inválido
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text('CPF inválido'),
                                    content: Text(
                                        'Por favor, insira um CPF válido com 11 números!'),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Color.fromARGB(
                                                      255, 111, 7, 0)),
                                          textStyle: MaterialStateProperty.all<
                                              TextStyle>(
                                            TextStyle(
                                              color: Color.fromARGB(
                                                  255, 111, 7, 0),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'OK',
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              } else {
                                // CPF válido
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PerfilScreen()),
                                );
                              }
                            } else {
                              // Campos vazios - não prosseguir
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Campos vazios'),
                                  content: Text(
                                      'Por favor, preencha todos os campos.'),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromARGB(255, 111, 7, 0)),
                                        textStyle: MaterialStateProperty.all<
                                            TextStyle>(
                                          TextStyle(
                                            color:
                                                Color.fromARGB(255, 111, 7, 0),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'OK',
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 241, 117),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                            ),
                          ),
                          child: Text(
                            'ACESSAR',
                            style: TextStyle(
                              color: Color.fromARGB(255, 111, 7, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

//
//"Botão" esqueceu senha e cadastro de novo usuário
//
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                // Ação ao clicar no botão "Cadastre-se aqui"
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CadastroUsuarioScreen()),
                                );
                              },
                              child: Text(
                                "Cadastre-se aqui",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 111, 7, 0),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                // Ação ao clicar no botão "Esqueceu a senha?"
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RecuperarSenha()),
                                );
                              },
                              child: Text(
                                "Esqueceu a senha?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 111, 7, 0),
                                ),
                              ),
                            ),
                          ],
                        ),

//
//Espaço para inserir digital - gif
//
/*
                        SizedBox(height: 30),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/images/digital.gif'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),*/
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
