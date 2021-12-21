import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intellect_tv/controller/authentication_controller.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ContentPageState createState() => _ContentPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ContentPageState extends State<ContentPage> {
  int _selectedIndex = 0;
  AuthenticationController authenticationController = Get.find();
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Estados',
      style: optionStyle,
    ),
    Text(
      'Contenido',
      style: optionStyle,
    ),
    Text(
      'Chat',
      style: optionStyle,
    ),
    Text(
      'Configuracion',
      style: optionStyle,
    ),
    Text(
      'Ubicacion',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contenidos'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: () {
              Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            },
          ),
          IconButton(icon: const Icon(Icons.logout), onPressed: () {}),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Estados',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Contenido',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuracion',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Ubicacion',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
