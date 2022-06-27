import 'package:flutter/material.dart';

const primaryColor = Color(0xff16a085);
const primaryColorLight = Color(0xff5ad2b5);
const primaryColorDark = Color(0xff007158);

const screenPadding = 20.0;

class CompnayData {
  static const String nameAr = "شركة مشاعل القصر للتجارة والمقاولات";
  static const String nameEn = "Mashail AlQasr Trading & Con. Co";
  static const String nameArAndEn =
      "${CompnayData.nameAr}\n${CompnayData.nameEn}";
  static const String address = "الرياض حي الشفاء شارع المثنى بن الحارثة";
  static const int vatNo = 300288801100003;
}

const bool isLive = false;
const double appVersion = 2.2;

const String vpsIp = "65.21.195.115";
const String socketUrl = "http://$vpsIp:6798";

String apiUrl = //
    "http://65.21.195.115/mashael-alqasr/public/api";
    // "";
    // 'http://localhost:8000/api/';
    // 'http://65.21.195.115/mashael-alqasr${isLive ? "-live" : ""}/public/api/';