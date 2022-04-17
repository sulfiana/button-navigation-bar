import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Center(
        child: Text(
      'Home',
      style: TextStyle(fontSize: 25),
    )),
    Center(
        child: Text(
      'Camera',
      style: TextStyle(fontSize: 25),
    )),
    Center(
        child: Text(
      'Pesan',
      style: TextStyle(fontSize: 25),
    )),
    Center(
        child: Text(
      'Personal',
      style: TextStyle(fontSize: 25),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sulpiana'),
        backgroundColor: Color.fromARGB(255, 71, 129, 177),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 71, 129, 177)),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera), //255, 176, 87,
              label: 'Camera',
              backgroundColor: Color.fromARGB(206, 24, 173, 149)),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Pesan',
              backgroundColor: Color.fromARGB(206, 189, 119, 28)),
          BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Personal',
              backgroundColor: Color.fromARGB(255, 176, 87, 199)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
