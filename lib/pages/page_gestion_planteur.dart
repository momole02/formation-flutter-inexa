import 'package:agri_app/constantes/colors.dart';
import 'package:agri_app/pages/page_formulaire_planteur.dart';
import 'package:agri_app/widgets/bouton_container.dart';
import 'package:flutter/material.dart';

class PageGestionPlanteur extends StatelessWidget {
  const PageGestionPlanteur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestion des planteurs"),
        backgroundColor: primary,
        foregroundColor: onPrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                buildDetailsPlantation("Kouassi Serge"),
                buildDetailsPlantation("Amani Justin"),
                buildDetailsPlantation("Kaboré Junior"),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageFormulairePlanteur(),
                ),
              );
            },
            child: const BoutonContainer(text: "Ajouter planteur"),
          )
          // Row(
          //   children: [
          //     Expanded(
          //       child: Padding(
          //         //Marge externe
          //         padding: const EdgeInsets.all(10.0),
          //         child: Container(
          //           //Marge interne
          //           padding: const EdgeInsets.all(15),
          //           decoration: BoxDecoration(
          //             color: primary,
          //             borderRadius: BorderRadius.circular(30),
          //           ),
          //           child: const Text(
          //             "Nouveau planteur",
          //             textAlign: TextAlign.center,
          //             style: TextStyle(fontSize: 18, color: onPrimary),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget buildDetailsPlantation(String texte) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade400,
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            texte,
            style: const TextStyle(fontSize: 18),
          ),
          const Icon(
            Icons.delete,
            size: 32,
          ),
        ],
      ),
    );
  }
}
