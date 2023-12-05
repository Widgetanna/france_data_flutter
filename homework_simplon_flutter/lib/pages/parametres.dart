import 'package:flutter/material.dart';
import 'package:homework_simplon_flutter/components/drawer_widget.dart';
import 'package:homework_simplon_flutter/constantes/constantes.dart';

class Parametres extends StatelessWidget {
  const Parametres({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Parametres",
          style: TextStyle(
            color: whiteColor,
          ),
        ),
      ),
      drawer: const DrawerWidget(),
    );
  }
}