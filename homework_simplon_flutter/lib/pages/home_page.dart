import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework_simplon_flutter/components/drawer_widget.dart';
import 'package:homework_simplon_flutter/components/video_hero.dart';
import 'package:homework_simplon_flutter/components/widget_chapitre.dart';
import 'package:homework_simplon_flutter/constantes/const_text.dart';
import 'package:homework_simplon_flutter/constantes/constantes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          titleText,
          style: TextStyle(
            color: whiteColor,
          ),
        ),
        iconTheme: const IconThemeData(color: whiteColor),
      ),
      drawer: const DrawerWidget(),
      body: const Column(
        children: [
          VideoHero(
            videoPath: 'assets/video/v2.mp4',
          ),
          VideoHero(
            videoPath: 'assets/video/v1.mp4',
          ),
        ],
      ),
    );
  }
}
