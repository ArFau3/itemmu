import 'package:itemmu/ui/bantuan.dart';
import 'package:flutter/material.dart';
import 'package:itemmu/ui/awal.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      // Appbar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 129, 3),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        bottom: PreferredSize(
            child: Container(
              padding: const EdgeInsets.only(left: 20, bottom: 100),
              child: Row(
                children: [
                  Stack(
                    children: [Image.asset('assets/images/logo.png')],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
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
            ),
            preferredSize: const Size.fromHeight(150)),
      ),
      // body
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'POPULER',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
        height: 50,
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
                    return const Bantuan();
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
                    return const AwalScreen();
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
  ItemKategori({
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
