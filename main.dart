import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Container> kotak = List.generate(50, (index) {
      return Container(
        color: const Color.fromRGBO(221, 160, 221, 20),
      );
    });
    return MaterialApp(
        title: 'grid view',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Sulpiana"),
          ),
          body: GridView(
            padding: const EdgeInsets.all(5),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              childAspectRatio: 4 / 4,
            ),
            children: kotak,
          ),
        ));
  }
}
