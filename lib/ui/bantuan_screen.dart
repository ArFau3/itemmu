import 'package:flutter/material.dart';
import '../widget/daftar_bantuan.dart';
import '../widget/menu_footer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BantuanScreen extends StatelessWidget {
  const BantuanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      /* AppBar */
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.appBarBantuan,
          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        toolbarHeight: media.height * 0.09,
        shape: const Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 121, 121, 121),
            width: 1,
          )
        ),
      ),
      /* END AppBar */
      /* Body */
      body: ListView(
        padding: EdgeInsets.only(
          left: media.width * 0.05,
          top: media.height * 0.015,
          right: media.width * 0.05,
        ),
        /* Daftar Bantuan */
        children: [
          DaftarBantuan(judul: AppLocalizations.of(context)!.pusatBantuan, isi: AppLocalizations.of(context)!.isiPusatBantuan),
          DaftarBantuan( judul: AppLocalizations.of(context)!.komplain, isi: AppLocalizations.of(context)!.isiKomplain),
          DaftarBantuan(judul: AppLocalizations.of(context)!.hubungiItemmu, isi: AppLocalizations.of(context)!.isiHubungiItemmu),
        ],
        /* END Daftar Bantuan */
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
            MenuFooter(gambar: 'assets/icon/home.png', nama: AppLocalizations.of(context)!.menuBeranda, warna: Colors.white, tautan: '/beranda'),
            MenuFooter(gambar: 'assets/icon/search.png', nama: AppLocalizations.of(context)!.menuCari, warna: Colors.white, tautan: '/cari'),
            MenuFooter(gambar: 'assets/icon/bantuan_aktif.png', nama: AppLocalizations.of(context)!.menuBantuan, warna: const Color.fromARGB(255, 255, 129, 3), tautan: '/bantuan'),
            MenuFooter(gambar: 'assets/icon/akun.png', nama: AppLocalizations.of(context)!.menuAkun, warna: Colors.white, tautan: '/profil_awal'),
          ],
        ),
      ),      
      /** END Menu Bottom Navigation **/
    );
  }
}
