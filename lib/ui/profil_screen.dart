import 'package:flutter/material.dart';
import '../widget/menu_footer.dart';

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
            AspectRatio(
              aspectRatio: media.width / media.height * 2,
              child: Container(
                  //width: media.width,
                  //height: 130,
                  decoration: BoxDecoration(
                  color: const Color.fromARGB(212, 255, 131, 3),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(35),
                ),
                  child: Column(
                    children: [
                      //Foto Profil
                      Container(
                        padding: const EdgeInsets.only(top: 95),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(140),
                        ),
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
            ),
          //Menu Info Akun
          Positioned(
            top: media.height*0.42,
            child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(horizontal: media.width*0.02),
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
                buttonMinWidth: 8,
                children: [
                  //Container = menu
                  //expanded = pembatas
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const ProfilScreen();
                          }),
                        );
                      },
                      child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: const [
                          IconTheme(
                            data: IconThemeData(
                              color: Colors.white,
                              size: 35,
                            ), 
                            child: Icon(Icons.account_balance_wallet_outlined),
                          ),
                          Text(
                            "Dompet Digital",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: const VerticalDivider(
                          color: Color.fromARGB(255, 121, 121, 121),
                          thickness: 1,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const ProfilScreen();
                        }),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: const [
                          IconTheme(
                            data: IconThemeData(
                              color: Colors.white,
                              size: 35,
                            ), 
                            child: Icon(Icons.shopping_cart_outlined),
                          ),
                          Text(
                            "Keranjang",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: const VerticalDivider(
                        color: Color.fromARGB(255, 121, 121, 121),
                        thickness: 1,
                      )
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const ProfilScreen();
                        }),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      child: Column(
                        children: const [
                          IconTheme(
                            data: IconThemeData(
                            ), 
                            child: Image(
                              image: AssetImage("assets/images/promo.png"),
                              color: Colors.white,
                              width: 35,
                              height: 35,
                            ),
                          ),
                          Text(
                            "Kupon",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Riwayat Pembelian",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          //Menu History
          Expanded(
            child: Column(
              children: [
                //Pilihan Menu History
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(
                            Icons.access_time,
                            size: 40,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0, 
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                        ),
                        const Text(
                          "Belum Bayar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                            icon: const Image(
                              image: AssetImage("assets/images/circle.png"),
                              color: Colors.white,
                              width: 35,
                              height: 35,
                              
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0, 
                              backgroundColor: Colors.red.withOpacity(0),
                            ),
                            label: const Text(" "),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: const Text(
                              "Sedang Diproses",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                          icon: const Icon(
                            Icons.check_circle_outline,
                            size: 40,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0, 
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 17),
                            child: const Text(
                            "Selesai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //END Pilihan Menu History
                Container(
                  margin: const EdgeInsets.only(left:20, right: 30),
                  child: const Divider(
                    color: Color.fromARGB(255, 121, 121, 121),
                    thickness: 2,
                  )
                ),
              ],
            ),
          ),
          //END Menu History
          //Tambahan
          const SizedBox(
            height: 330,
          )
          //END Tambahan
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
            MenuFooter(gambar: 'assets/icon/home.png', nama: 'Beranda', warna: Colors.white, tautan: '/beranda'),
            MenuFooter(gambar: 'assets/icon/search.png', nama: 'Cari', warna: Colors.white, tautan: '/cari'),
            MenuFooter(gambar: 'assets/icon/bantuan.png', nama: 'Bantuan', warna: Colors.white, tautan: '/bantuan'),
            MenuFooter(gambar: 'assets/icon/akun_aktif.png', nama: 'Beranda', warna: const Color.fromARGB(255, 255, 129, 3), tautan: '/profil_awal'),
          ],
        ),
      ),      
      /** END Menu Bottom Navigation **/
    );
  }
}
