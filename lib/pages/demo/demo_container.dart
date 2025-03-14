import 'package:flutter/material.dart';

class DemoContainer extends StatelessWidget {
  const DemoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(3, 3),
                    blurRadius: 10,
                    spreadRadius: 3,
                    color: Colors.grey.shade300,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: const Text(
                "Helloooo !",
                style: TextStyle(fontSize: 35),
              ),
            )
          ],
        ),
      ),
    );
  }
}
