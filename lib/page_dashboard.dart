import 'package:agri_app/colors.dart';
import 'package:flutter/material.dart';

class PageDashboard extends StatelessWidget {
  const PageDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Dashboard"),
        foregroundColor: onPrimary,
        backgroundColor: primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png"),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: buildIndicateur(
                    "Nombre de planteurs",
                    "10",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: buildIndicateur(
                    "Nombre de plantations",
                    "20",
                  ),
                ),
              ],
            ),
            const Divider(height: 50),
            Column(
              children: [
                buildMenu("Gestion des planteurs"),
                const SizedBox(height: 10),
                buildMenu("Gestion des plantations"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildMenu(String titre) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        titre,
        style: const TextStyle(fontSize: 17, color: onPrimary),
      ),
    );
  }

  Widget buildIndicateur(String titre, String valeur) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            titre,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              color: onPrimary,
            ),
          ),
          Text(
            valeur,
            style: const TextStyle(
              fontSize: 25,
              color: onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
