import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'widgets/big_art_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metropolitan museum of art provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/art': (context) => const BigArtWidget(
              model: null,
            ),
      },
      initialRoute: '/',
    );
  }
}
