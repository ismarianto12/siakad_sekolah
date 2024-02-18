import 'package:absensi_siswa/pages/Dashboard.dart';
import 'package:absensi_siswa/pages/Profile.dart';
import 'package:absensi_siswa/pages/error_page.dart';
import 'package:absensi_siswa/pages/kelas.dart';
import 'package:absensi_siswa/pages/mapel.dart';
import 'package:absensi_siswa/widget/navigate.dart';
import 'package:flutter/material.dart';
import 'package:absensi_siswa/pages/Siswa.dart';
import '../main.dart';
import '../pages/LaporanSiswa.dart';
import '../pages/ScanAbsen.dart';
import '../pages/guru.dart';
import '../utils/MyCustomRoute.dart';

class AppRoute {
  static MaterialPageRoute generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => Navigate());
      case '/siswa':
        return MaterialPageRoute(builder: (_) => Siswa());
      case '/profil':
        return MaterialPageRoute(builder: (_) => Profil());
      case '/mapel':
        return MyCustomRoute(
          builder: (context) => Mapel(),
          settings: setting,
        );
      case '/absen':
        return MyCustomRoute(
          builder: (context) => ScanAbsen(),
          settings: setting,
        );
      case '/kelas':
        return MyCustomRoute(
          builder: (context) => Kelas(),
          settings: setting,
        );
      case '/guru':
        // return MaterialPageRoute(builder: (_) => Guru());
        return MyCustomRoute(
          builder: (context) => Guru(),
          settings: setting,
        );
      case '/laporan_siswa':
        return MaterialPageRoute(builder: (_) => LaporanSiswa());
      default:
        return MaterialPageRoute(builder: (_) => Error_page());
    }
  }
}
