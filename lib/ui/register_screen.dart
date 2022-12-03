import 'package:flutter/material.dart';
import '../widget/menu_footer.dart';
import '../widget/metode_login.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class RegisterScreen extends StatefulWidget{
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // ignore: non_constant_identifier_names
  bool lihat_pass = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 62, 62),
      body: ListView(
        children: [
          Flexible(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 129, 3),
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
                        height: 220,
                        fit: BoxFit.cover,
                    ),
                  ),
                  /* END logo itemmu */
                  /* Form Login */
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Form(
                          //key: _formkey,
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: AppLocalizations.of(context)!.username,
                                )
                              ),
                              SizedBox(height: media.height * 0.005),
                              TextFormField(
                                obscureText: lihat_pass,
                                enableSuggestions: false,
                                autocorrect: false,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: AppLocalizations.of(context)!.password,
                                  suffixIcon: IconButton(
                                    icon: lihat_pass ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                                    onPressed: togglePassVisibility,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: media.height * 0.06),
                      ]
                    ),
                  ),
                  /* END Form Login */
                  /* Menu Login */
                  MetodeLogin(judul_tombol: AppLocalizations.of(context)!.tombolRegister, tautan: '/profil'),
                  /* END Menu Login */
                ]
              ),
            ),
          ),
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

  void togglePassVisibility() => setState(() {
    lihat_pass = !lihat_pass;
  });
}