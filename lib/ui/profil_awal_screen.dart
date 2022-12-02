import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:itemmu/ui/beranda_screen.dart';
import 'package:itemmu/ui/login_screen.dart';
import 'package:itemmu/ui/register_screen.dart';
import 'package:itemmu/ui/bantuan_screen.dart';


class ProfilAwalScreen extends StatelessWidget {
  const ProfilAwalScreen({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 62, 62, 62),
    body: ListView(
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
            width: 370,
            height: 450,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 219, 115, 12),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                //logo itemmu
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/banner.png',
                      width: 400,
                      height: 240,
                      fit: BoxFit.cover,
                  ),
                ),
                //END logo itemmu
                //Tombol Buat Akun
                Container(
                  height: 35,
                    decoration: BoxDecoration( //DecorationImage
                      border: Border.all(
                        color: Colors.black,
                        width: 1.3,
                        style: BorderStyle.none
                      ), //Border.all
                 
                      borderRadius: BorderRadius.circular(15),
                
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(
                            2.0,
                            4.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 1,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          textStyle: const TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen()));
                        },
                        child: const Text('Buat Akun'), 
                      ),                   
                ),
                //END Tombol Buat akun 
                //Kata Atau
                Container(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 13.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 30,
                              thickness: 1,
                            )),
                      ),
                      const Text("Atau"),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(left: 13.0, right: 20.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 36,
                              thickness: 1,
                            )),
                      ),
                    ]
                  ),
                ),
                //END Kata Atau
                //Opsi Sosmed
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [  
                      IconButton(
                        iconSize: 60,
                        icon: const Image(
                          image: AssetImage("assets/images/google.png"),
                          color: null,
                          fit: BoxFit.scaleDown,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilAwalScreen()));
                        },
                      ),
                      IconButton(
                        iconSize: 60,
                        icon: const Image(
                          image: AssetImage("assets/images/facebook.png"),
                          color: null,
                          fit: BoxFit.scaleDown,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilAwalScreen()));
                        },
                      ),
                    ],
                  ),
                ),
                //END Opsi Sosmed
              ]
            ),
          ),
        ),
        //Kalimat Persetujuan  
        Center(
          child: Container(
            padding: const EdgeInsets.only(top: 45),
            // margin: const EdgeInsets.only(left: 57, right: 57),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Dengan melakukan pendaftaran berarti anda menyetujui segala ",
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Kebijakan Aplikasi',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 218, 115, 9), 
                          fontSize: 14, fontWeight: 
                          FontWeight.bold, decoration: 
                          TextDecoration.underline
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () { Navigator.push(context, MaterialPageRoute(builder: (_) => const BerandaScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //END Kalimat Persetujuan
        //Opsi Login
        Center(
          child: Container(
            padding: const EdgeInsets.only(top: 60),
            margin: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Sudah mempunyai akun? ',
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'login',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 218, 115, 9), 
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () { Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //END Opsi Login
      ],
    ),
    //Footer
    bottomNavigationBar: Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: Colors.grey))
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const BerandaScreen();
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