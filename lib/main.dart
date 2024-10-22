import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 69, 27),
        body: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/images/img12345.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child:
                 Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text('Enter your number', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
              
                ),
              
              ),
              const TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'enter number'),
               )
            ],
          ),
        ),
      ),
    );
  }
}

// child: Column(children: [  Container(
//               width: 100,
//               height: 100,
//               color: Colors.red,
//               child: const Center(child: Text('Box 1')),
//             ),
//             const SizedBox(height: 20), // Adds spacing between boxes
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.green,
//               child: const Center(child: Text('Box 2')),
//             ),
//             const SizedBox(height: 20),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.blue,
//               child: const Center(child: Text('Box 3')),
//             ),],),
          