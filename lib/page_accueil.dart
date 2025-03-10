import 'package:flutter/material.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  bool noirSurBlanc = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: noirSurBlanc ? Colors.white : Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bonjour !",
              style: TextStyle(
                fontSize: 35,
                color: noirSurBlanc ? Colors.black : Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  noirSurBlanc = !noirSurBlanc;
                });
              },
              child: const Text("Basculer !"),
            )
          ],
        ),
      ),
    );
  }
}
