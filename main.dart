import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 3 Lab'),
        titleTextStyle: TextStyle(fontSize: 20.0
        ,color: const Color.fromARGB(255, 100, 159, 248)
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 200.0,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Text(
            'Hello flutter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 54, 11, 172),
            ),
          ),
        ),
        
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:(){
          print('FAB pressed!');
        },
        backgroundColor: const Color.fromARGB(210, 0, 0, 0),
        child: const Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.white,),
        
      ),    
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}