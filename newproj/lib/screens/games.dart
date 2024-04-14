import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 247, 247),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 12, 12, 12),
          ),
          onPressed: () {
            print('Welcome');
          },
        ),
        title: Container(
          height: 40,
          child: Image.asset('assets/logo2.jpeg'),

        ),
        centerTitle: true,
        
      ),
    
    );
  }
}