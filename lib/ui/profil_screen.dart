import 'package:flutter/material.dart';
import '../widget/menu_footer.dart';
import '../widget/menu_akun.dart';
import '../widget/menu_history.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilScreen extends StatelessWidget{
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 62, 62),
      body: ListView(
        children:[
          Stack(
            children: [
          Container(
            //Top Section
              width: media.width,
              height: media.height * 0.65,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 62, 62, 62),
              ),
              //END Top Section  
            ),
            Container(
                width: media.width,
                height: media.height * 0.5,
                decoration: BoxDecoration(
                color: const Color.fromARGB(212, 255, 131, 3),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(35),
              ),
                child: Column(
                  children: [
                    //Foto Profil
                    Container(
                      padding: EdgeInsets.only(top: media.height * 0.1),
                      child: CircleAvatar(
                        radius: 55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(360),
                          child: SizedBox.expand(
                            child:Image.asset(
                              "assets/images/foto.jpg",
                              fit: BoxFit.fill,
                            )
                          ),
                        ),
                      ),
                    ),
                    //END Foto Profil
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Arfau",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          //Menu Info Akun
          Positioned(
            top: media.height * 0.4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: media.width*0.03),
              height: 130,
              width: media.width*0.94,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 36, 36, 36),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
              ),
              //Pilihan Menu Info Akun
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuAkun(gambar: "assets/icon/wallet.png", judul: AppLocalizations.of(context)!.profilDompet, tautan: '/profil'),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: const VerticalDivider(
                          color: Color.fromARGB(255, 121, 121, 121),
                          thickness: 1,
                        )),
                  ),
                  MenuAkun(gambar: "assets/icon/cart.png", judul: AppLocalizations.of(context)!.profilKeranjang, tautan: '/profil'),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: const VerticalDivider(
                        color: Color.fromARGB(255, 121, 121, 121),
                        thickness: 1,
                      )
                    ),
                  ),
                  MenuAkun(gambar: "assets/icon/promo.png", judul: AppLocalizations.of(context)!.profilKupon, tautan: '/profil'),
                ],
              ),
              //END Pilihan Menu Info Akun
            ),
          ),
          //END Menu Info Akun
          ]
          ),                 
          //Mid Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: media.height * 0.03,
              ),
              Text(
                AppLocalizations.of(context)!.profilTeks,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          //Menu History
          Expanded(
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                MenuHistory(gambar: "assets/icon/clock.png", judul: AppLocalizations.of(context)!.profilBayar, tautan: '/profil'),
                MenuHistory(gambar: "assets/icon/circle.png", judul: AppLocalizations.of(context)!.profilProses, tautan: '/profil'),
                MenuHistory(gambar: "assets/icon/check-mark.png", judul: AppLocalizations.of(context)!.profilSelesai, tautan: '/profil'),

                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left:20, right: 30),
            child: const Divider(
              color: Color.fromARGB(255, 121, 121, 121),
              thickness: 2,
            )
          ),
          //END Menu History
          //END Mid Section
        ]
      ),
      /**Menu Bottom Navigation **/
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
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
