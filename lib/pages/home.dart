import 'package:firstapp/components/bg_principal.dart';
import 'package:firstapp/components/item_image.dart';
import 'package:firstapp/components/item_rounded.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          const BgPrincipal(),
          listHorizontal("Avances", const ItemRounded(), 10),
          const SizedBox(height: 10.0),
          listHorizontal("Programas sobre viajes", const ItemImage(), 10),
          const SizedBox(height: 10.0),
          listHorizontal("Tendencias", const ItemImage(), 10),
          const SizedBox(height: 10.0),
          listHorizontal("Favoritas", const ItemImage(), 10),
          const SizedBox(height: 10.0),
          listHorizontal("Mi Lista", const ItemImage(), 20),
        ],
      ),
      bottomNavigationBar: naviBottom(),
    );
  }

  BottomNavigationBar naviBottom() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inicio",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Buscar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: "Proximamente",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.download),
          label: "Descargas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_rounded),
          label: "Mas",
        ),
      ],
    );
  }

  Widget listHorizontal(String titles, Widget item, int count) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(titles,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)),
        ),
        SizedBox(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: count,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
