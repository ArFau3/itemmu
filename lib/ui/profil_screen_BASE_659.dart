import 'package:flutter/material.dart';
import 'package:itemmu/ui/bantuan.dart';
import 'package:itemmu/ui/awal.dart';
import 'package:itemmu/ui/beranda.dart';

class ProfilScreen extends StatelessWidget{
  const ProfilScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 62, 62),
      body: Stack(
        children: [
          //Top Section
          Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
              color: const Color.fromARGB(212, 255, 131, 3),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(35),
            ),
            //END Top Section
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
          //Menu Info Akun
          Positioned(
            top: 280,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              width: 345,
              height: 130,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 36, 36, 36),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
              ),
              //Pilihan Menu Info Akun
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                alignment: MainAxisAlignment.spaceEvenly,
                buttonMinWidth: 10,
                children: [
                  //Container = menu
                  //expanded = pembatas
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.account_balance_wallet_outlined),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0, 
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                        ),
                            const Text(
                            "Dompet Digital",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                      ],
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
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.shopping_cart_outlined),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0, 
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                        ),
                            const Text(
                            "Keranjang",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                      ],
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
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          icon: const Image(
                            image: AssetImage("assets/images/promo.png"),
                            color: Colors.white,
                            width: 30,
                            height: 30,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0, 
                            backgroundColor: Colors.red.withOpacity(0),
                          ),
                          label: const Text(" "),
                        ),
                            const Text(
                            "Kupon",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              //END Pilihan Menu Info Akun
            ),
          ),
          //END Menu Info Akun
          //Mid Section
          Container(
              margin: const EdgeInsets.only(top: 120, left: 15),
              child: Column(
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
          ),
          //Menu History
          Container(
            margin: const EdgeInsets.only(top: 280, left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Pilihan Menu History
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(
                            Icons.access_time,
                            size: 60,
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
                              width: 50,
                              height: 50,
                              
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0, 
                              backgroundColor: Colors.red.withOpacity(0),
                            ),
                            label: const Text(" "),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
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
                            size: 60,
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
          //END Mid Section
        ],
      ),
      //Footer
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const Beranda();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/home.png'),
                  const Text(
                    'Beranda',
                    style: TextStyle(color: Colors.white,),
                  ),
                ],
              ),
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
                  Image.asset('assets/icon/akun_aktif.png'),
                  const Text(
                    'Akun',
                    style: TextStyle(color: Color.fromARGB(255, 255, 129, 3)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //END Footer
    );
  }
}