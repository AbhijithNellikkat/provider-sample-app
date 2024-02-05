import 'package:flutter/material.dart';
import 'package:provider_sample_app/pages/home_page.dart';
import 'package:provider_sample_app/pages/settings_page.dart';

class SekeletonWidget extends StatefulWidget {
  const SekeletonWidget({super.key});

  @override
  State<SekeletonWidget> createState() => _SekeletonWidgetState();
}

class _SekeletonWidgetState extends State<SekeletonWidget> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
     SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}