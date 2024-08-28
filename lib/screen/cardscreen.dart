import 'package:flutter/material.dart';
import 'package:tarija_app/pages/carousel_page.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const Divider(),
          const Divider(),
          // ignore: prefer_const_constructors
          const Text(
            'Tarija',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          miCardInfo(),
          const Text(
            'Lugares para vistar en Tarija',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 180, 12, 0)),
            textAlign: TextAlign.center,
          ),
          miCard(),
          miCard1(),
          miCardImage(),
          miCardImageCarga(),
        ],
      ),
    );
  }

  Card miCardInfo() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      margin: const EdgeInsets.all(15),
      elevation: 0,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(
              'Tarija',
            ),
            subtitle: Text(
              ' es la capital del departamento que lleva el mismo nombre y se encuentra a orillas del río Guadalquivir y al sur de Bolivia y cerca de la frontera con Argentina. tarija turismo La ciudad de Tarija se encuentra en un amplio valle a una altura de 1.874 msnm. y cuenta con un clima agradable la mayor parte del año. La ciudad es conocida como “Tarija la linda” o la “Ciudad de las flores”, el destino es ideal para los que busquen disfrutar del clima templado, visitar los diferentes atractivos turísticos, degustar vinos locales y conocer gente amable y simpática. Tarija fue fundada en el año 1574 por el español Luis de Fuentes y Vargas, quien la bautizó con el nombre de “Villa de San Bernardo de la Frontera de Tarixa”.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Card miCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.89d0630111b5d8bc544f76411dea6ba6?rik=A%2bTIDoTiSzvIhw&riu=http%3a%2f%2fbolivianing.com%2fwp-content%2fuploads%2f2013%2f08%2fboliviaclasica.jpg&ehk=zmOI5dAEF3qGhL%2fnrLGgyyiV3MjmTqXwlt2aLZcO49Y%3d&risl=&pid=ImgRaw&r=0'),
          ),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Ruta del vino y del singani'),
            subtitle: Text(
              'Tarija es famosa en Bolivia y el mundo por su producción de vino y singani. En las afueras de la ciudad hay grandes extensiones de viñedos y bodegas que se pueden visitar por los turistas. La mayoría de ellos se encuentran en el Municipio de Uriondo.',
              style: TextStyle(fontSize: 16),
            ),
            leading: Icon(Icons.location_on),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              Text('Aceptar'),
              SizedBox(
                width: 10,
              ),
              Text('Cancelar')
            ],
          )
        ],
      ),
    );
  }

  Card miCard1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Image(
            image: NetworkImage(
                'https://scontent.flpb2-1.fna.fbcdn.net/v/t1.18169-9/24296651_153508048711139_5112224314810332581_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=HJoSbtB5VvoAX8HvmVz&_nc_ht=scontent.flpb2-1.fna&oh=00_AT-XLuIK-GOJ_UuUyR1X9X8ucldpELAQfNlz3X7C2mbyVQ&oe=6376A60A'),
          ),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Cordillera de Sama, Altiplano Tarijeño'),
            subtitle: Text(
              'En los municipios cercanos de de Yunchará y El Puente se encuentra la Reserva Ecológica Cordillera de Sama, en su interior se protege la flora y fauna de la región además de los hermosos atractivos turísticos como lagunas, dunas de arena, bosques, etc…',
              style: TextStyle(fontSize: 16),
            ),
            leading: Icon(Icons.location_on),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              Text(
                'Aceptar',
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
    );
  }

  Card miCardImage() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.d375443d70200425984e3c662785be2f?rik=pQ1rTWSpz93ckA&pid=ImgRaw&r=0'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Castillo'),
          )
        ],
      ),
    );
  }

  Card miCardImageCarga() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.c7198940de85c30e7b5d199c2e249eeb?rik=cHbomB4Nt5hHng&riu=http%3a%2f%2f3.bp.blogspot.com%2f-W0xl--7Fy7s%2fU005QQTLPsI%2fAAAAAAAALvU%2ftbvO2zE-Lso%2fs1600%2fuvas2021.jpg&ehk=PYbrv8UYrD3c8rrBTw0oB6N93AlQGJHjKONnO7pI%2fJg%3d&risl=&pid=ImgRaw&r=0'),
            fit: BoxFit.cover,
            height: 260,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Uva Con Carga'),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            IconButton(
                icon: const Icon(Icons.add),
                // ignore: prefer_const_constructors
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Carousel()),
                    ))
          ])
        ],
      ),
    );
  }
}
