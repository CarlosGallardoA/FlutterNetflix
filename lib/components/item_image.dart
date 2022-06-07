import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://i.pinimg.com/originals/ec/6d/f1/ec6df1b84aa0262d028e91eda9d92c02.jpg",
          width: 100.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10.0),
      ],
    );
  }
}
