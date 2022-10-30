import 'package:itemmu/ui/beranda.dart';
import 'package:flutter/material.dart';
import 'package:itemmu/ui/awal.dart';

class Bantuan extends StatelessWidget {
  const Bantuan({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;
    double paddingLeft = MediaQuery.of(context).padding.left;
    double paddingRight = MediaQuery.of(context).padding.right;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 36, 36),
      // AppBar
      appBar: AppBar(
        title: Text(
          'Bantuan',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        backgroundColor: Color.fromARGB(255, 36, 36, 36),
        toolbarHeight: heightDevice = 70,
        shape: Border(
            bottom: BorderSide(
          color: Color.fromARGB(255, 121, 121, 121),
          width: 1,
        )),
      ),
      body: ListView(
        padding: EdgeInsets.only(
            left: paddingLeft = 10,
            top: paddingTop = 20,
            right: paddingRight = 10),
        children: [
          // Pusat Bantuan
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: paddingBottom = 10),
                        child: Text(
                          "Pusat Bantuan",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        'Temukan semua jawaban dari pertanyaan kamu seputar Itemmu.',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset('assets/icon/panah.png'),
                ),
              ],
            ),
            width: widthDevice = 20,
            height: heightDevice = 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  width: 1,
                  color: Color.fromARGB(255, 121, 121, 121),
                )),
          ),
          SizedBox(
            height: heightDevice = 20,
          ),

          // Komplain
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: paddingBottom = 10),
                        child: Text(
                          "Komplain",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        'Cek komplain yang kamu ajukan ke itemmu disini.',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset('assets/icon/panah.png'),
                ),
              ],
            ),
            width: widthDevice = 20,
            height: heightDevice = 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  width: 1,
                  color: Color.fromARGB(255, 121, 121, 121),
                )),
          ),
          SizedBox(
            height: heightDevice = 20,
          ),

          // Hubungi Itemmu
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: paddingBottom = 10),
                        child: Text(
                          "Hubungi Itemmu",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        'Tim layanan pengguna kami siap membantu mengatasi permasalahan kamu.',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset('assets/icon/panah.png'),
                ),
              ],
            ),
            width: widthDevice = 20,
            height: heightDevice = 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  width: 1,
                  color: Color.fromARGB(255, 121, 121, 121),
                )),
          ),
          SizedBox(
            height: heightDevice = 20,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
        height: heightDevice = 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Beranda();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/home.png'),
                  Text(
                    'Beranda',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icon/search.png'),
                Text(
                  'Cari',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Bantuan();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/bantuan_aktif.png'),
                  Text(
                    'Bantuan',
                    style: TextStyle(color: Color.fromARGB(255, 255, 129, 3)),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return AwalScreen();
                  }),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon/akun.png'),
                  Text(
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
