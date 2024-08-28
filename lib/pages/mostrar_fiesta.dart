import 'package:flutter/material.dart';

import '../models/model_fiestas.dart';

class MostrarFiesta extends StatelessWidget {
  final Fiesta carruselImages;
  const MostrarFiesta({
    Key? key,
    required this.carruselImages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(120, 255, 255, 255),
      appBar: AppBar(
          title: const Text(
            'Chapaco d´ Corazón',
            style: TextStyle(
                fontFamily: './assets/font/set.ttf',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          centerTitle: false,
          flexibleSpace: Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: const <Color>[
                  Color.fromARGB(255, 99, 0, 0),
                  Color.fromARGB(255, 230, 23, 23),
                  Color.fromARGB(255, 255, 255, 255)
                ])),
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text(
              carruselImages.name,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 180, 12, 0)),
              textAlign: TextAlign.center,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      placeholder: const AssetImage("assets/loading1.gif"),
                      image: AssetImage(carruselImages.image),
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        carruselImages.name,
                        style: const TextStyle(
                          letterSpacing: 1.0,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Text(
                    carruselImages.description,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
