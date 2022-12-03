// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      width: media.width * 0.29,
      padding: EdgeInsets.symmetric(horizontal: media.width * 0.01),
      child: Column(
        children: [
          Image.asset(image,
          fit: BoxFit.fill,
        ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, height: 2, ),
          )
        ],
      ),
    );
  }
}
