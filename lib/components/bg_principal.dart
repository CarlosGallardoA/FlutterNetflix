import 'package:firstapp/components/navbar_top.dart';
import 'package:flutter/material.dart';

class BgPrincipal extends StatelessWidget {
  const BgPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[header(), infoSerie(), buttoms()],
    );
  }

  Widget header() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://wallpaperaccess.com/full/1695677.jpg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          height: 350.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.05),
                Colors.black.withOpacity(0.025),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        const SafeArea(child: NavbarTop()),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text("Telenovelas",
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text("Suspenso insostenicle",
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text("De suspenso",
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text("Adolescentes",
            style: TextStyle(color: Colors.white, fontSize: 10.0)),
      ],
    );
  }

  Widget buttoms() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: const <Widget>[
                Icon(Icons.check, color: Colors.white),
                SizedBox(height: 3.0),
                Text("Mi lista",
                    style: TextStyle(color: Colors.white, fontSize: 10.0)),
              ],
            ),
            TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: const Text(
                "Reproducir",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Column(
              children: const <Widget>[
                Icon(Icons.info_outline, color: Colors.white),
                SizedBox(height: 3.0),
                Text("Información",
                    style: TextStyle(color: Colors.white, fontSize: 10.0)),
              ],
            ),
          ],
        ));
  }
}
