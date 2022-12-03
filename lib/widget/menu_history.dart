// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MenuHistory extends StatelessWidget{
  MenuHistory({Key? key,
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

    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: media.width * 0.01),
      child: Column(
        children: [
          ElevatedButton.icon(
            icon: Image(
              image: AssetImage(gambar),
              color: Colors.white,
              width: media.width * 0.1,
              height: 35,
            ),
            onPressed: () {
              Navigator.pushNamed(context, tautan);
            },
            style: ElevatedButton.styleFrom(
              elevation: 0.0, 
              backgroundColor: Colors.red.withOpacity(0),
            ),
            label: const Text(""),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: media.width * 0.013),
            child: Text(
              judul,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
            ),
          ),
        ],
      ),
    );
  }
}