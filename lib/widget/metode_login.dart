// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MetodeLogin extends StatelessWidget{
  MetodeLogin({Key? key,
    required this.judul_tombol,
    required this.tautan,
  }) : super(key: key);

  String judul_tombol;
  String tautan;
  
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Column(
      children: [
        //Tombol Buat Akun
        SizedBox(height: media.height * 0.02),
        Container(
          height: 35,
          decoration: BoxDecoration( //DecorationImage
            border: Border.all(
              color: Colors.black,
              width: 1.3,
              style: BorderStyle.none
            ), //Border.all
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(
                  2.0,
                  4.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 1,
              ), 
              
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: media.width * 0.2),
              textStyle: const TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, tautan);
            },
            child: Text(judul_tombol), 
          ),                   
        ),
        //END Tombol Buat akun 
        //Kata Atau
        Container(
          padding: EdgeInsets.only(top: media.height * 0.03),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 13.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 30,
                      thickness: 1,
                    )),
              ),
              Text(AppLocalizations.of(context)!.atau),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 13.0, right: 20.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 36,
                      thickness: 1,
                    )),
              ),
            ]
          ),
        ),
        //END Kata Atau
        //Opsi Sosmed
        Container(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [  
              IconButton(
                iconSize: 50,
                icon: const Image(
                  image: AssetImage("assets/images/google.png"),
                  color: null,
                  fit: BoxFit.scaleDown,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/profil_awal');
                },
              ),
              IconButton(
                iconSize: 50,
                icon: const Image(
                  image: AssetImage("assets/images/facebook.png"),
                  color: null,
                  fit: BoxFit.scaleDown,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/profil_awal');
                },
              ),
            ],
          ),
        ),
        //END Opsi Sosmed
        SizedBox(height: media.height * 0.015),
      ],
    );
  }
}