import 'package:flutter/material.dart';
import 'package:midterm/login_screen.dart';
import 'package:midterm/main_screen.dart';
import 'package:midterm/register_screen.dart';
import 'splash_screen.dart'; // Import the splash screen file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'Midterm App',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    useMaterial3: true,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => const SplashScreen(),
    '/login': (context) => const LoginScreen(),
    '/register': (context) => const RegisterScreen(),
    '/main': (context) => const MainScreen(),
  },
);

  }
}