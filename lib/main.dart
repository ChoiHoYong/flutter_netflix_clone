import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/screen/home_screen.dart';
import 'package:flutter_netflix_clone/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YongFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        colorScheme: const ColorScheme.dark(),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              const HomeScreen(),
              Container(
                child: const Center(
                  child: Text('search'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('save'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('more'),
                ),
              ),
            ],
          ),
          bottomNavigationBar: const BottomBar(),
        ),
      ),
    );
  }
}
