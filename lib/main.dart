import 'package:flutter/material.dart';
import 'package:handbags_sale_app/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      title: 'HandBag Sale App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0),
          elevation: 0,
          leading: Icon(Icons.keyboard_backspace, color: Colors.grey[600]),
          actions: [
            Icon(Icons.search, color: Colors.grey[600]),
            const SizedBox(width: 20),
            Icon(Icons.shopping_cart_outlined, color: Colors.grey[600]),
            const SizedBox(width: 20),
          ],
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
