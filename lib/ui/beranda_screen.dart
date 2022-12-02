import 'package:flutter/material.dart';
import '../widget/menu_footer.dart';
import '../widget/daftar_game.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      // Appbar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 129, 3),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(media.height * 0.13),
            child: Container(
              padding: EdgeInsets.only(
                  left: media.width * 0.02, bottom: media.height * 0.1),
              child: Row(
                children: [
                  Stack(
                    children: [Image.asset('assets/images/logo.png')],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: media.width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'ITEMMU',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
      // body
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: media.height * 0.05,
          ),
          const Text(
            'POPULER',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: media.height * 0.02
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
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
          SizedBox(
            height:  media.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
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
          SizedBox(
            height: media.height * 0.05,
          ),
          const Text(
            'NEW TITLES',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: media.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
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
          SizedBox(
            height: media.height * 0.05,
          ),
        ],
      ),
      /**Menu Bottom Navigation **/
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
        height: media.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuFooter(gambar: 'assets/icon/home_aktif.png', nama: 'Beranda', warna: const Color.fromARGB(255, 255, 129, 3), tautan: '/beranda'),
            MenuFooter(gambar: 'assets/icon/search.png', nama: 'Cari', warna: Colors.white, tautan: '/cari'),
            MenuFooter(gambar: 'assets/icon/bantuan.png', nama: 'Bantuan', warna: Colors.white, tautan: '/bantuan'),
            MenuFooter(gambar: 'assets/icon/akun.png', nama: 'Beranda', warna: Colors.white, tautan: '/profil_awal'),
          ],
        ),
      ),      
      /** END Menu Bottom Navigation **/
    );
  }
}