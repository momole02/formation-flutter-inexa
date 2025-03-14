import 'package:agri_app/constantes/colors.dart';
import 'package:agri_app/widgets/bouton_container.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PageFormulairePlanteur extends StatefulWidget {
  const PageFormulairePlanteur({
    super.key,
  });

  @override
  State<PageFormulairePlanteur> createState() => _PageFormulairePlanteurState();
}

class _PageFormulairePlanteurState extends State<PageFormulairePlanteur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nouveau planteur"),
        backgroundColor: primary,
        foregroundColor: onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return GestureDetector(
                onTap: _choisirPhotos,
                child: Container(
                  width: constraints.maxWidth,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  child: const Center(
                    child: Text("Ajouter une photo de profil"),
                  ),
                ),
              );
            }),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Nom du planteur",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Prénoms du planteur",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              readOnly: true,
              decoration: const InputDecoration(
                labelText: "Date de naissance",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Numéro de téléphone",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            const Spacer(),
            const BoutonContainer(
              text: "Ajouter planteur",
            )
          ],
        ),
      ),
    );
  }

  void _choisirPhotos() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: ImageSource.camera,
    );
  }
}
