import 'package:flutter/material.dart';
import 'package:homework_simplon_flutter/components/drawer_widget.dart';
import 'package:homework_simplon_flutter/constantes/constantes.dart';

class Regions extends StatelessWidget {
  const Regions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Recherche Par Region",
          style: TextStyle(
            color: whiteColor,
          ),
        ),
      ),
      drawer: const DrawerWidget(),
    );
  }
}

