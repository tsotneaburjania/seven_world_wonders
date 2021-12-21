import 'package:flutter/material.dart';
import 'package:seven_world_wonders/presentation/screens/details_screen.dart';
import 'package:seven_world_wonders/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '7 World Wonders',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.yellow, //change your color here
            ),
            backgroundColor: Colors.black,
            titleTextStyle: TextStyle(color: Colors.yellow, fontSize: 25.0)
        ),

      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(),
      },
    );
  }
}