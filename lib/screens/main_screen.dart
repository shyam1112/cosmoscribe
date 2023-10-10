import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Set HomeScreen as the initial screen
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: Text('This is the Main Screen content'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.black,
            ),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
            label: 'Page 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            label: 'Page 4',
          ),
        ],
        currentIndex: 0, // Set the default screen as Home
        selectedItemColor: Colors.black,
      ),
    );
  }
}
