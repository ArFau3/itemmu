// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DaftarBantuan extends StatelessWidget{
  DaftarBantuan({Key? key,
    required this.judul,
    required this.isi,
  }) : super(key: key);

  String judul;
  String isi;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(
              width: 1,
              color: const Color.fromARGB(255, 121, 121, 121),
            )
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: media.height * 0.02,),
                      child: Text(
                        judul,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      isi,
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/icon/panah.png'),
              ),
            ],
          ),
        ),
        SizedBox(height: media.height * 0.02),
      ],
    );
  }
}