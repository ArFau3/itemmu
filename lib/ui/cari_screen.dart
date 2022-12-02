import 'package:flutter/material.dart';
import '../widget/menu_footer.dart';

class CariScreen extends StatelessWidget {
  const CariScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      // AppBar
      appBar: AppBar(
        title: const Text(
          'Pencarian',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        toolbarHeight: media.height * 0.09,
        shape: const Border(
            bottom: BorderSide(
          color: Color.fromARGB(255, 121, 121, 121),
          width: 1,
        )),
      ),
      body: const Center(
        child: Text(
          "Halaman Cari",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      /**Menu Bottom Navigation **/
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
        height: media.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuFooter(gambar: 'assets/icon/home.png', nama: 'Beranda', warna: Colors.white, tautan: '/beranda'),
            MenuFooter(gambar: 'assets/icon/search_aktif.png', nama: 'Cari', warna: const Color.fromARGB(255, 255, 129, 3), tautan: '/cari'),
            MenuFooter(gambar: 'assets/icon/bantuan.png', nama: 'Bantuan', warna: Colors.white, tautan: '/bantuan'),
            MenuFooter(gambar: 'assets/icon/akun.png', nama: 'Beranda', warna: Colors.white, tautan: '/profil_awal'),
          ],
        ),
      ),      
      /** END Menu Bottom Navigation **/
    );
  }

} 