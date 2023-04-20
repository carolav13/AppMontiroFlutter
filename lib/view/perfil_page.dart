import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Perfil'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Nome Completo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Email: email@example.com',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'CPF: 123.456.789-10',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                // Ação ao pressionar o botão de editar perfil
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Editar Perfil',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 111, 7, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
