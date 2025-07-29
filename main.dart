import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My App')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: 300.0,
            height: 150.0,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 202, 141, 7),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10.0),
                right: Radius.elliptical(50.0, 10.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hello Flutter',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Image.network(
                  'https://th.bing.com/th/id/R.6a598d6c2d2879f33b04d2909d0d6e44?rik=TkYW5xK2%2fsP3ug&pid=ImgRaw&r=0',
                  width: 100,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your action here
            print('FAB Pressed');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
