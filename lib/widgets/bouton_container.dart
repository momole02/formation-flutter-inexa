import 'package:agri_app/constantes/colors.dart';
import 'package:flutter/material.dart';

class BoutonContainer extends StatelessWidget {
  final String text;
  const BoutonContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            //Marge externe
            padding: const EdgeInsets.all(10.0),
            child: Container(
              //Marge interne
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: onPrimary),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
