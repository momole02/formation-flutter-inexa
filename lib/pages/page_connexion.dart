import 'package:agri_app/pages/page_dashboard.dart';
import 'package:flutter/material.dart';
import '../constantes/colors.dart';

final GlobalKey<FormState> _formKey = GlobalKey();
final TextEditingController _matriculeController = TextEditingController();
final TextEditingController _passController = TextEditingController();

class PageConnexion extends StatelessWidget {
  const PageConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png"),
              Column(
                children: [
                  Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Connexion",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _matriculeController,
                            onChanged: (value) {},
                            style: const TextStyle(fontSize: 20),
                            decoration: const InputDecoration(
                              labelText: "Matricule",
                              labelStyle: TextStyle(fontSize: 20),
                              border: OutlineInputBorder(),
                              //enabledBorder: OutlineInputBorder()
                            ),
                            validator: (value) {
                              if (value == null) {
                                return "Veuillez saisir un matricule!";
                              } else if (value.length < 6) {
                                return "Matricule invalide";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: true,
                            controller: _passController,
                            onChanged: (value) {},
                            validator: (value) {
                              if (value == null) {
                                return "Veuillez saisir un mot de passe!";
                              } else if (value.length < 6) {
                                return "Le mot de passe doit compter au moins 6 carractères";
                              }
                              return null;
                            },
                            style: const TextStyle(fontSize: 20),
                            decoration: const InputDecoration(
                              labelText: "Mot de passe",
                              labelStyle: TextStyle(fontSize: 20),
                              border: OutlineInputBorder(),
                              //enabledBorder: OutlineInputBorder()
                            ),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              _onClicConnexion(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Envoyer",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: onPrimary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onClicConnexion(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PageDashboard(
          matricule: _matriculeController.text,
        ),
      ),
    );
  }
}
