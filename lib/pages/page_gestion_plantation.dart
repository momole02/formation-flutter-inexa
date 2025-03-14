import 'package:agri_app/constantes/colors.dart';
import 'package:agri_app/models/plantation.dart';
import 'package:agri_app/pages/page_formulaire_plantation.dart';
import 'package:agri_app/services/ioc.dart';
import 'package:agri_app/services/plantation_repository.dart';
import 'package:agri_app/widgets/bouton_container.dart';
import 'package:flutter/material.dart';
import 'package:ioc_container/ioc_container.dart';

class PageGestionPlantation extends StatefulWidget {
  const PageGestionPlantation({super.key});

  @override
  State<PageGestionPlantation> createState() => _PageGestionPlantationState();
}

class _PageGestionPlantationState extends State<PageGestionPlantation> {
  List<Plantation> _plantations = [];

  late PlantationRepository _repository;
  @override
  void initState() {
    super.initState();
    _chargerPlantations();
  }

  _initRepository() async {
    _repository = await IoC.container.getAsync<PlantationRepository>();
  }

  _chargerPlantations() async {
    await _initRepository();
    final result = await _repository.getPlantations();
    setState(() {
      _plantations = result;
    });
  }

  _refresh() {
    _chargerPlantations();
  }

  void _editerPlantation(Plantation plantation) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PageFormulairePlantation(
          plantation: plantation,
        ),
      ),
    ).then((value) {
      _refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestion des plantations"),
        backgroundColor: primary,
        foregroundColor: onPrimary,
      ),
      body: Column(
        children: [
          Expanded(
            // child: ListView(
            //   children: [
            //     buildDetailsPlantation("Plantation N°123456"),
            //     buildDetailsPlantation("Plantation N°123457"),
            //     buildDetailsPlantation("Plantation N°123458"),
            //   ],
            // ),
            child: ListView.builder(
                itemCount: _plantations.length,
                itemBuilder: (context, index) {
                  return buildDetailsPlantation(_plantations[index]);
                }),
          ),
          GestureDetector(
            onTap: () {
              _onClicNouvellePlantation(context);
            },
            child: const BoutonContainer(
              text: "Nouvelle plantation",
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDetailsPlantation(Plantation plantation) {
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
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                _editerPlantation(plantation);
              },
              child: Text(
                "Plantation N° ${plantation.code!}",
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _supprimerPlantation(plantation);
            },
            child: const Icon(
              Icons.delete,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }

  void _onClicNouvellePlantation(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PageFormulairePlantation(),
      ),
    ).then((value) {
      _refresh();
    });
  }

  void _supprimerPlantation(Plantation plantation) async {
    await _initRepository();
    await _repository.deletePlantation(plantation.code!);
    _refresh();
  }
}
