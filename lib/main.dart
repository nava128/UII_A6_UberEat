import 'package:flutter/material.dart';
import 'package:navaburger/pages/HomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffb0ecf4),
        // useMaterial3: false,
        // primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const HomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: const Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
