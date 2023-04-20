import 'package:flutter/material.dart';

class RecuperarSenha extends StatelessWidget {
  const RecuperarSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 7, 0),
        title: Text(
          'Recuperar Senha',
          style: TextStyle(color: Color.fromARGB(255, 255, 245, 203)),
        ),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 255, 245, 203), // cor da seta de retorno
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/images/background.jpg',
              fit: BoxFit.cover,
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
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'lib/images/logoNF.png',
                  height: 160,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 16),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Solicitação de recuperação de senha
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Solicitação enviada com sucesso! \nSiga as instruções presentes no e-mail cadastrado.',
                        ),
                        backgroundColor: Color.fromARGB(255, 12, 109, 87),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 111, 7, 0)),
                    // outras propriedades de estilo aqui
                  ),
                  child: Text('Enviar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
