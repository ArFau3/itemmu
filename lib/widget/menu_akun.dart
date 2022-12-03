// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MenuAkun extends StatelessWidget{
  MenuAkun({Key? key,
    required this.gambar,
    required this.judul,
    required this.tautan,
  }) : super(key: key);

  String gambar;
  String judul;
  String tautan;
  
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, tautan);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 3),
        child: Column(
          children: [
            IconTheme(
              data: const IconThemeData(
              ), 
              child: Image(
                image: AssetImage(gambar),
                color: Colors.white,
                width: media.width * 0.10,
                height: 33,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              judul,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}