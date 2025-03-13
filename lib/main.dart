import 'package:agri_app/demo_container.dart';
import 'package:agri_app/demo_formulaire.dart';
import 'package:agri_app/demo_formulaire_connexion.dart';
import 'package:agri_app/demo_formulaire_inscription.dart';
import 'package:agri_app/page_accueil.dart';
import 'package:agri_app/page_dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        // useMaterial3: true,
      ),
      home: const PageDashboard(),
    );
  }
}
