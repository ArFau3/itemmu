import 'package:itemmu/ui/bantuan_screen.dart';
import 'package:flutter/material.dart';
import 'package:itemmu/ui/profil_awal_screen.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;
    double paddingLeft = MediaQuery.of(context).padding.left;
    double paddingRight = MediaQuery.of(context).padding.right;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      // Appbar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 129, 3),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(heightDevice = 150),
            child: Container(
              padding: EdgeInsets.only(
                  left: paddingLeft = 20, bottom: paddingBottom = 100),
              child: Row(
                children: [
                  Stack(
                    children: [Image.asset('assets/images/logo.png')],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: paddingLeft = 20),
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
            height: heightDevice = 50,
          ),
          const Text(
            'POPULER',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: heightDevice = 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            height: heightDevice = 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            height: heightDevice = 50,
          ),
          const Text(
            'NEW TITLES',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: heightDevice = 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
        height: heightDevice = 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icon/home_aktif.png'),
                const Text(
                  'Beranda',
                  style: TextStyle(color: Color.fromARGB(255, 255, 129, 3)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icon/search.png'),
                const Text(
                  'Cari',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const BantuanScreen();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/bantuan.png'),
                  const Text(
                    'Bantuan',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const ProfilAwalScreen();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/akun.png'),
                  const Text(
                    'Akun',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Menu game
class ItemKategori extends StatelessWidget {
  const ItemKategori({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          title,
          style: const TextStyle(color: Colors.white, height: 2),
        )
      ],
    );
  }
}
