import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widget/menu_footer.dart';
import '../widget/metode_login.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ProfilAwalScreen extends StatelessWidget {
  const ProfilAwalScreen({super.key});

@override
Widget build(BuildContext context) {
  var media = MediaQuery.of(context).size;
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 62, 62, 62),
    body: ListView(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
            decoration: BoxDecoration(
              color:  const Color.fromARGB(255, 255, 129, 3),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                /* logo itemmu */
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/banner.png',
                      width: 400,
                      height: 240,
                      fit: BoxFit.cover,
                  ),
                ),
                /* END logo itemmu */
                /* Menu Login */
                MetodeLogin(judul_tombol: AppLocalizations.of(context)!.buatAkun, tautan: '/register')
                /* END Menu Login */
              ]
            ),
          ),
        ),
        //* Kalimat Persetujuan */
        Center(
          child: Container(
            padding: const EdgeInsets.only(top: 45, left: 2, right: 2),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.awalTeksSatu,
                        style: const TextStyle(
                          color: Colors.white, 
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: AppLocalizations.of(context)!.awalTeksSatuSpan,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 218, 115, 9), 
                          fontSize: 14, fontWeight: 
                          FontWeight.bold, decoration: 
                          TextDecoration.underline
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () { 
                            Navigator.pushNamed(context, '/profil_awal');
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        /* END Kalimat Persetujuan */
        /* Opsi Login */
        Center(
          child: Container(
            padding: const EdgeInsets.only(top: 60),
            margin: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: AppLocalizations.of(context)!.awalTeksDua,
                          style: const TextStyle(
                            color: Colors.white, 
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: AppLocalizations.of(context)!.awalTeksDuaSpan,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 218, 115, 9), 
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () { 
                              Navigator.pushNamed(context, '/login');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        /* END Opsi Login */
      ],
    ),
    /**Menu Bottom Navigation **/
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1, color: Colors.grey)
          )
        ),
        height: media.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuFooter(gambar: 'assets/icon/home.png', nama: AppLocalizations.of(context)!.menuBeranda, warna: Colors.white, tautan: '/beranda'),
            MenuFooter(gambar: 'assets/icon/search.png', nama: AppLocalizations.of(context)!.menuCari, warna: Colors.white, tautan: '/cari'),
            MenuFooter(gambar: 'assets/icon/bantuan.png', nama: AppLocalizations.of(context)!.menuBantuan, warna: Colors.white, tautan: '/bantuan'),
            MenuFooter(gambar: 'assets/icon/akun_aktif.png', nama: AppLocalizations.of(context)!.menuAkun, warna: const Color.fromARGB(255, 255, 129, 3), tautan: '/profil_awal'),
          ],
        ),
      ),      
      /** END Menu Bottom Navigation **/
  );
}
}