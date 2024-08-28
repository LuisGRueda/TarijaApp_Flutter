import 'package:tarija_app/data/fiesta_data.dart';
import 'package:tarija_app/models/model_fiestas.dart';
import 'package:tarija_app/pages/mostrar_fiesta.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final Fiesta? carruselImages;
  const Carousel({
    Key? key,
    this.carruselImages,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // List<Receta> carrusel = [];

  // @override
  // void initState() {
  //   super.initState();
  //   carrusel = carruselImages;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Chapaco d´ Corazón',
              style: TextStyle(
                  fontFamily: 'assets/font/set.ttf',
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
        body: Column(
          children: [
            const SizedBox(height: 30),
            CarouselSlider.builder(
              itemCount: carruselImages.length,
              itemBuilder: (context, index, realIndex) {
                // ignore: unused_local_variable
                final carruselImage = carruselImages[index];
                return CardImages(
                  carruselImages: carruselImages[index],
                );
              },
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(seconds: 5),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ));
  }
}

class CardImages extends StatelessWidget {
  final Fiesta carruselImages;
  const CardImages({Key? key, required this.carruselImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          splashColor: Colors.red,
          onTap: () {
            carruselImages.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MostrarFiesta(
                          carruselImages: carruselImages,
                        )));
          },
          child: Image(
            image: AssetImage(carruselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
