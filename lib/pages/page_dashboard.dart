import 'package:agri_app/constantes/colors.dart';
import 'package:agri_app/pages/page_gestion_plantation.dart';
import 'package:agri_app/pages/page_gestion_planteur.dart';
import 'package:flutter/material.dart';

class PageDashboard extends StatelessWidget {
  final String matricule;
  const PageDashboard({
    super.key,
    required this.matricule,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Dashboard"),
        foregroundColor: onPrimary,
        backgroundColor: primary,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(matricule),
              const Icon(Icons.person),
            ],
          ),
        ],
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
                buildMenu("Gestion des planteurs", () {
                  _onClicGestionPlanteurs(context);
                }),
                const SizedBox(height: 10),
                buildMenu("Gestion des plantations", () {
                  _onClicGestionPlantations(context);
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenu(
    String titre,
    Function onClick,
  ) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          titre,
          style: const TextStyle(fontSize: 17, color: onPrimary),
        ),
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

  void _onClicGestionPlanteurs(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PageGestionPlanteur(),
      ),
    );
  }

  void _onClicGestionPlantations(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PageGestionPlantation(),
      ),
    );
  }
}
