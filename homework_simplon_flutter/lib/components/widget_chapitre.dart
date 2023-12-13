import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework_simplon_flutter/constantes/const_text.dart';
import 'package:homework_simplon_flutter/constantes/constantes.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
           width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(
                  'assets/img/clouds.png',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  const Color.fromARGB(255, 244, 242, 242).withOpacity(0.8),
                  BlendMode.srcATop,
                ),
              ),
            ),
          ),
          
             Container(
                height: 60.0,
                color: Theme.of(context)
                    .colorScheme
                    .inversePrimary
                    .withOpacity(0.8),
                child: const Center(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35.0),
                      child: Text(
                        'I. Nos Régions',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: ElevatedButton(
                  onPressed: () => context.go('/region'),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 4.0),
                      Text('Rechercher Par Région'),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 100.0, right: 16.0, bottom: 8.0),
                child: const Text(
                  description2,
                  style: TextStyle(
                    color: Color.fromARGB(255, 163, 162, 162),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
  }
}