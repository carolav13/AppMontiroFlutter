import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadastroUsuarioScreen extends StatefulWidget {
  @override
  _CadastroUsuarioScreenState createState() => _CadastroUsuarioScreenState();
}

class _CadastroUsuarioScreenState extends State<CadastroUsuarioScreen> {
  final _formKey = GlobalKey<FormState>();
  String _nome = '';
  String _email = '';
  String _senha = '';
  String _cpf = '';
  String _tipoUsuario = '';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 7, 0),
        title: Text(
          'Cadastro de Usuário',
          style: TextStyle(color: Color.fromARGB(255, 255, 245, 203)),
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 245, 203)),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Opacity(
            opacity: 0.65,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              reverse: false,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 111, 7, 0),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nome',
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Por favor, digite seu nome.';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _nome = value ?? '';
                          });
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Por favor, digite seu e-mail.';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _email = value ?? '';
                          });
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Por favor, digite sua senha.';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _senha = value ?? '';
                          });
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'CPF/CNPJ',
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Por favor, digite seu CPF.';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _cpf = value ?? '';
                          });
                        },
                      ),
                      SizedBox(height: 16),
                      Text('Tipo de Usuário'),
                      RadioListTile(
                        title: Text('ONG'),
                        value: 'ONG',
                        groupValue: _tipoUsuario,
                        onChanged: (value) {
                          setState(() {
                            _tipoUsuario = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Estabelecimento'),
                        value: 'Estabelecimento',
                        groupValue: _tipoUsuario,
                        onChanged: (value) {
                          setState(() {
                            _tipoUsuario = value.toString();
                          });
                        },
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // Implementar ação de cadastro de usuário

                            // Exibir mensagem de cadastro concluído
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Cadastro concluído.',
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor:
                                    Color.fromARGB(255, 12, 109, 87),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          }
                        },
                        child: Text('Cadastrar'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(
                              255, 111, 7, 0), // cor de fundo do botão
                          foregroundColor: Color.fromARGB(
                              255, 255, 245, 203), // cor do texto do botão
                        ),
                      )
                    ],
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
