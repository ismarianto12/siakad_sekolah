import 'package:absensi_siswa/pages/Dashboard.dart';
import 'package:absensi_siswa/pages/error_page.dart';
import 'package:flutter/material.dart';
import 'package:absensi_siswa/pages/Siswa.dart';

class AppRoute {
  static MaterialPageRoute generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case '/siswa':
        return MaterialPageRoute(builder: (_) => Siswa());
      default:
        return MaterialPageRoute(builder: (_) => Error_page());
    }
  }
}
