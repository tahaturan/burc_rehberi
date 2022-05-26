import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/burc_listesi.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    final Burc gelenBurc = settings.arguments as Burc;
    switch (settings.name) {
      case "/":
        return sayfaGecis(BurcListesi());
      case "/burcDetay":
        return sayfaGecis(BurcDetay(secilenBurc: gelenBurc));
    }
  }

  static PageRoute<dynamic> sayfaGecis(Widget gidilecekSayfa) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        builder: (context) => gidilecekSayfa,
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => gidilecekSayfa,
      );
    }
  }
}
