import 'package:flutter/material.dart';
import '../widget/daftar_bantuan.dart';
import '../widget/menu_footer.dart';

class BantuanScreen extends StatelessWidget {
  const BantuanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      // AppBar
      appBar: AppBar(
        title: const Text(
          'Bantuan',
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
      body: ListView(
        padding: EdgeInsets.only(
            left: media.width * 0.05,
            top: media.height * 0.015,
            right: media.width * 0.05),
        children: [
          DaftarBantuan(judul: "Pusat Bantuan", isi: 'Temukan semua jawaban dari pertanyaan kamu seputar Itemmu.'),
          DaftarBantuan( judul: "Komplain", isi: 'Cek komplain yang kamu ajukan ke itemmu disini.'),
          DaftarBantuan(judul: "Hubungi Itemmu", isi: 'Tim layanan pengguna kami siap membantu mengatasi permasalahan kamu.'),
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
            MenuFooter(gambar: 'assets/icon/home.png', nama: 'Beranda', warna: Colors.white, tautan: '/beranda'),
            MenuFooter(gambar: 'assets/icon/search.png', nama: 'Cari', warna: Colors.white, tautan: '/cari'),
            MenuFooter(gambar: 'assets/icon/bantuan_aktif.png', nama: 'Bantuan', warna: const Color.fromARGB(255, 255, 129, 3), tautan: '/bantuan'),
            MenuFooter(gambar: 'assets/icon/akun.png', nama: 'Beranda', warna: Colors.white, tautan: '/profil_awal'),
          ],
        ),
      ),      
      /** END Menu Bottom Navigation **/
    );
  }
}
