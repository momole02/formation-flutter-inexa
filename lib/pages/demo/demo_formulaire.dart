import 'package:flutter/material.dart';

class DemoFormulaire extends StatefulWidget {
  const DemoFormulaire({super.key});

  @override
  State<DemoFormulaire> createState() => _DemoFormulaireState();
}

class _DemoFormulaireState extends State<DemoFormulaire> {
  late String _nom;
  late String _salutations;

  @override
  void initState() {
    super.initState();
    _nom = "";
    _salutations = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  _nom = value;
                },
                style: const TextStyle(fontSize: 19),
                decoration: const InputDecoration(
                  labelText: "Votre nom ",
                  labelStyle: TextStyle(fontSize: 19),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 19),
              ElevatedButton(
                onPressed: () {
                  //debugPrint("Bonjour $_nom ");
                  setState(() {
                    _salutations = "Bonjour $_nom";
                  });
                },
                child: const Text(
                  "Envoyer",
                  style: TextStyle(fontSize: 19),
                ),
              ),
              const SizedBox(height: 19),
              Text(
                _salutations,
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
