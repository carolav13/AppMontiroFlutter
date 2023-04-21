import 'package:flutter/material.dart';
import 'package:recomeco/view/configuracao.dart';
import 'package:recomeco/view/home.dart';
import 'package:recomeco/view/perfil_page.dart';

class ConfiguracoesScreen extends StatefulWidget {
  const ConfiguracoesScreen({Key? key}) : super(key: key);

  @override
  _ConfiguracoesScreenState createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends State<ConfiguracoesScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PerfilScreen()),
      );
    }
  }

  void _onConfiguracoesTapped() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ConfiguracoesScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 111, 7, 0),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text('Configurações Avançadas'),
                  leading: Icon(Icons.settings),
                ),
                ListTile(
                  title: Text('Configurações de rede'),
                  leading: Icon(Icons.language),
                ),
                ListTile(
                  title: Text('Notificações'),
                  leading: Icon(Icons.notifications),
                  trailing: Switch(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 245, 203),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 111, 7, 0),
        onTap: (index) {
          if (index == 2) {
            _onConfiguracoesTapped();
          } else {
            _onItemTapped(index);
          }
        },
      ),
    );
  }
}
