import 'package:flutter/material.dart';

final GlobalKey<FormState> _formKey = GlobalKey();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passController = TextEditingController();

class DemoFormulaireConnexion extends StatelessWidget {
  final _emailRegex = r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
  const DemoFormulaireConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Veuillez saisir un email';
                    } else if (!RegExp(_emailRegex).hasMatch(value)) {
                      return 'Email invalide';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 19),
                TextFormField(
                  controller: _passController,
                  obscureText: true,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Mot de passe",
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Veuillez saisir un mot de passe';
                    } else if (value.length < 6) {
                      return 'Le mot de passe doit comporter au moins 6 caractères';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 19),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        debugPrint(
                          "email=${_emailController.text},"
                          " pass=${_passController.text}",
                        );
                      }
                    },
                    child: const Text(
                      "Envoyer",
                      style: TextStyle(fontSize: 25),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
