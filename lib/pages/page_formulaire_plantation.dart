import 'package:agri_app/constantes/colors.dart';
import 'package:agri_app/models/plantation.dart';
import 'package:agri_app/services/ioc.dart';
import 'package:agri_app/services/plantation_repository.dart';
import 'package:agri_app/widgets/bouton_container.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:ioc_container/ioc_container.dart';

class PageFormulairePlantation extends StatefulWidget {
  final Plantation? plantation;
  const PageFormulairePlantation({
    super.key,
    this.plantation,
  });

  @override
  State<PageFormulairePlantation> createState() =>
      _PageFormulairePlantationState();
}

class _PageFormulairePlantationState extends State<PageFormulairePlantation> {
  final _codePlantationCtl = TextEditingController();
  final _superficieCtl = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  String? _localite;
  String? _culture;
  String? _photo;
  late final PlantationRepository _repository;

  @override
  void initState() {
    super.initState();
    _codePlantationCtl.text = PlantationRepository.genererCodePlantation();
    IoC.container.getAsync<PlantationRepository>().then((repository) {
      _repository = repository;
    });
    if (widget.plantation != null) {
      _codePlantationCtl.text = widget.plantation!.code ?? "";
      _superficieCtl.text = "${widget.plantation!.superficie ?? ""}";
      setState(() {
        _culture = widget.plantation!.culture!;
        _localite = widget.plantation!.localite!;
        _photo = widget.plantation!.photo;
      });
    }
  }

  Future<void> _enregistrer() async {
    try {
      if (!_formKey.currentState!.validate()) {
        return;
      }

      if (widget.plantation != null) {
        await _repository.updatePlantation(
          PlantationDto(
            code: _codePlantationCtl.text,
            localite: _localite!,
            culture: _culture!,
            superficie: double.parse(_superficieCtl.text),
            photo: _photo,
          ),
        );

        if (mounted) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Plantation modifiée"),
              backgroundColor: Colors.green.shade600,
            ),
          );
        }
      } else {
        await _repository.ajouterPlantation(
          PlantationDto(
            code: _codePlantationCtl.text,
            localite: _localite!,
            culture: _culture!,
            superficie: double.parse(_superficieCtl.text),
            photo: _photo,
          ),
        );
        if (mounted) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Plantation ajoutée !"),
              backgroundColor: Colors.green.shade600,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Erreur: ${e.toString()}",
          ),
          backgroundColor: Colors.red.shade500,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.plantation != null
            ? const Text("Modifier plantation")
            : const Text("Nouvelle plantation"),
        backgroundColor: primary,
        foregroundColor: onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _codePlantationCtl,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: "Code plantation",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _superficieCtl,
                decoration: const InputDecoration(
                  labelText: "Superficie (m2)",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Valeur obligatoire';
                  } else if (double.tryParse(value) == null) {
                    return 'Valeur numérique attentue';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    labelText: "Localité",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
                onChanged: (value) {
                  _localite = value;
                },
                value: _localite,
                items: const [
                  DropdownMenuItem(
                    value: "Abidjan",
                    child: Text("Abidjan"),
                  ),
                  DropdownMenuItem(
                    value: "Dabou",
                    child: Text("Dabou"),
                  ),
                ],
                validator: (value) {
                  if (value == null) {
                    return 'Valeur obligatoire';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    labelText: "Culture effectuée",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
                onChanged: (value) {
                  _culture = value;
                },
                value: _culture,
                items: const [
                  DropdownMenuItem(
                    value: "Hévéa",
                    child: Text("Hévéa"),
                  ),
                  DropdownMenuItem(
                    value: "Palmier à huile",
                    child: Text("Palmier à huile"),
                  ),
                  DropdownMenuItem(
                    value: "Anarcade",
                    child: Text("Anarcade"),
                  ),
                  DropdownMenuItem(
                    value: "Café",
                    child: Text("Café"),
                  ),
                  DropdownMenuItem(
                    value: "Cacao",
                    child: Text("Cacao"),
                  ),
                ],
                validator: (value) {
                  if (value == null) {
                    return 'Valeur obligatoire';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
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
                    child: Center(
                      child: _photo != null
                          ? Image.file(
                              File(_photo!),
                              width: 100,
                            )
                          : const Text("Ajouter une photo"),
                    ),
                  ),
                );
              }),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  _enregistrer();
                },
                child: BoutonContainer(
                  text: widget.plantation != null
                      ? "Modifier plantation"
                      : "Ajouter plantation",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _choisirPhotos() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: ImageSource.camera,
    );
    if (image != null) {
      setState(() {
        _photo = image.path;
      });
    }
  }
}
