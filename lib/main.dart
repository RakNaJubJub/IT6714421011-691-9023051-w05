import 'package:flutter/material.dart';
import 'screens/gunpla_list_screen.dart';


void main() {
  runApp(const GunplaApp());
}


class GunplaApp extends StatelessWidget {
  const GunplaApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gunpla Viewer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GunplaListScreen(),
    );
  }
}
