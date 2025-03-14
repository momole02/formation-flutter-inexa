import 'package:flutter/material.dart';

class DemoFormulaireInscription extends StatefulWidget {
  const DemoFormulaireInscription({super.key});

  @override
  State<DemoFormulaireInscription> createState() =>
      _DemoFormulaireInscriptionState();
}

class _DemoFormulaireInscriptionState extends State<DemoFormulaireInscription> {
  final _nomController = TextEditingController();
  final _prenomController = TextEditingController();
  final _ageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nomController,
                style: const TextStyle(fontSize: 19),
                decoration: const InputDecoration(
                    labelText: "Nom",
                    labelStyle: TextStyle(fontSize: 19),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
                validator: (value) {
                  if (value == null) {
                    return "Saisissez un nom";
                  } else if (value.length < 3) {
                    return "Le nom doit comporter au moins 3 caractères";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _prenomController,
                style: const TextStyle(fontSize: 19),
                decoration: const InputDecoration(
                    labelText: "Prénom",
                    labelStyle: TextStyle(fontSize: 19),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
                validator: (value) {
                  if (value == null) {
                    return "Saisissez un prénoms";
                  } else if (value.length < 3) {
                    return "Le prénoms doit comporter au moins 3 caractères";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _ageController,
                style: const TextStyle(fontSize: 19),
                keyboardType: const TextInputType.numberWithOptions(
                  signed: false,
                  decimal: false,
                ),
                decoration: const InputDecoration(
                    labelText: "Age",
                    labelStyle: TextStyle(fontSize: 19),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
                validator: (value) {
                  if (value == null) {
                    return "Veuillez saisir un age";
                  } else if (int.tryParse(value) == null) {
                    return "Valeur numérique attendue";
                  } else if (!(int.tryParse(value)! >= 18 &&
                      int.tryParse(value)! <= 80)) {
                    return "L'age doit être compris entre 18 et 80 ans";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    debugPrint(
                      "nom=${_nomController.text},"
                      " prenoms=${_prenomController.text},"
                      " age=${_ageController.text}",
                    );
                  }
                },
                child: const Text(
                  "Valider",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
