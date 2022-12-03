import 'package:flutter/material.dart';
import '../widget/menu_footer.dart';
import '../widget/daftar_game.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      /* Appbar */
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 129, 3),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(media.height * 0.13),
          /* Logo */
          child: Container(
            padding: EdgeInsets.only( left: media.width * 0.02, bottom: media.height * 0.1),
            child: Row(
              children: [
                Image.asset('assets/images/logo.png'),
                Container(
                  margin: EdgeInsets.only(left: media.width * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'ITEMMU',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          /* END Logo */
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
        ),
      ),
      /* END Appbar */
      /* Body */
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: media.height * 0.03),
        children: [
          SizedBox(height: media.height * 0.05),
          /* Daftar Game Populer */
          Text(
            AppLocalizations.of(context)!.subJudulSatu,
            style: const TextStyle(
              color: Colors.white, 
              fontSize: 22, fontWeight: 
              FontWeight.bold,
            ),
          ),
          SizedBox(height: media.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemKategori(
                title: 'Mobile Legends',
                image: 'assets/images/ml.png',
              ),
              ItemKategori(
                title: 'League Of Legends',
                image: 'assets/images/lol.png',
              ),
              ItemKategori(
                title: 'Valorant',
                image: 'assets/images/valorant.png',
              )
            ],
          ),
          SizedBox(height:  media.height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemKategori(
                title: 'Apex Legends',
                image: 'assets/images/apex.png',
              ),
              ItemKategori(
                title: 'Genshin Impact',
                image: 'assets/images/genshin.png',
              ),
              ItemKategori(
                title: 'Call Of Duty',
                image: 'assets/images/cod.png',
              )
            ],
          ),
          /* END Daftar Game Populer */
          SizedBox(height: media.height * 0.05),
          /* Daftar Game Baru */
          Text(
            AppLocalizations.of(context)!.subJudulDua,
            style: const TextStyle(
              color: Colors.white, 
              fontSize: 22, 
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: media.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemKategori(
                title: 'Super Sus',
                image: 'assets/images/supersus.png',
              ),
              ItemKategori(
                title: 'Lokapala',
                image: 'assets/images/lokapala.png',
              ),
              ItemKategori(
                title: 'Diablo : Immortal',
                image: 'assets/images/diablo.png',
              )
            ],
          ),
          /* END Daftar Game Baru */
          SizedBox(height: media.height * 0.05),
        ],
      ),
      /* END Body */
      /**Menu Bottom Navigation **/
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1, 
              color: Colors.grey,
            )
          )
        ),
        height: media.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuFooter(gambar: 'assets/icon/home_aktif.png', nama: AppLocalizations.of(context)!.menuBeranda, warna: const Color.fromARGB(255, 255, 129, 3), tautan: '/beranda'),
            MenuFooter(gambar: 'assets/icon/search.png', nama: AppLocalizations.of(context)!.menuCari, warna: Colors.white, tautan: '/cari'),
            MenuFooter(gambar: 'assets/icon/bantuan.png', nama: AppLocalizations.of(context)!.menuBantuan, warna: Colors.white, tautan: '/bantuan'),
            MenuFooter(gambar: 'assets/icon/akun.png', nama: AppLocalizations.of(context)!.menuAkun, warna: Colors.white, tautan: '/profil_awal'),
          ],
        ),
      ),      
      /** END Menu Bottom Navigation **/
    );
  }
}