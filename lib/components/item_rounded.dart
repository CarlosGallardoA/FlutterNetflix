import 'package:flutter/material.dart';

import 'navbar_top.dart';

class ItemRounded extends StatelessWidget {
  const ItemRounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        Container(
          height: 110.0,
          width: 110.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(110.0),
            border: Border.all(
              color: Colors.yellow,
              width: 1.0,
            ),
          ),
          child: ClipOval(
            child: Image.network(
              'https://www.lahiguera.net/musicalia/artistas/varios/disco/9143/13_reasons_why_season_2_a_netflix_original_series_soundtrack-portada.jpg',
              height: 350.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image.asset("assets/imgs/typo13rw.png", height: 50.0),
      ],
    );
  }
}
