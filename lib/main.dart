import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'ui/beranda_screen.dart';
import 'ui/bantuan_screen.dart';
import 'ui/login_screen.dart';
import 'ui/profil_awal_screen.dart';
import 'ui/register_screen.dart';
import 'ui/profil_screen.dart';
import 'ui/cari_screen.dart';

void main() {
  runApp(const Itemmu());
}

class Itemmu extends StatelessWidget {
  const Itemmu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  const BerandaScreen(),
        '/beranda':(context) => const BerandaScreen(),
        '/bantuan': (context) => const BantuanScreen(),
        '/profil_awal': (context) => const ProfilAwalScreen(),
        '/login': (context) => const LoginScreen(),
        '/register':(context) => const RegisterScreen(),
        '/profil':(context) => const ProfilScreen(),
        '/cari':(context) => const CariScreen(),
      },
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('id', ''),
        Locale('en', ''),
      ],
    );
  }
}

