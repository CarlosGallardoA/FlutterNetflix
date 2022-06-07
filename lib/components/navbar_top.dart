import "package:flutter/material.dart";

class NavbarTop extends StatelessWidget {
  const NavbarTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          "assets/imgs/Netflixlogo.png",
          height: 30,
        ),
        const Text(
          "Programas",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        const Text(
          "Peliculas",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        const Text(
          "Mi Lista",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        )
      ],
    );
  }
}
