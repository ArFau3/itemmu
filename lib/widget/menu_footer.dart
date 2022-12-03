// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MenuFooter extends StatelessWidget{
  MenuFooter({Key? key,
    required this.gambar,
    required this.nama,
    required this.warna,
    required this.tautan,
  }) : super(key: key);

  String gambar;
  String nama;
  Color warna;
  String tautan;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, tautan);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(gambar),
          Text(
            nama,
            style: TextStyle(
              color: warna,
            ),
          ),
        ],
      ),
    ); 
  }
}