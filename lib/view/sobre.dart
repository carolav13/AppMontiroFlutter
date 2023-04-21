import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 111, 7, 0),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 255, 245, 203),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      100.0), // define o raio de arredondamento das bordas
                  child: Image(
                    width: 160,
                    height: 160,
                    image: AssetImage('lib/images/dev2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Maria Carolina Azevedo Veiga',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Desenvolvedora de software',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'O Montirõ é um aplicativo que busca viabilizar a doação de alimentos. \n O objetivo do APP é conectar'
                  'estabelecimentos que tenham sobras de alimentos com pessoas que estão em '
                  'situação de insegurança alimentar e/ou ONGs que atuam doando alimentos.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(height: 16),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Color.fromARGB(255, 111, 7, 0),
                  iconSize: 32.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
