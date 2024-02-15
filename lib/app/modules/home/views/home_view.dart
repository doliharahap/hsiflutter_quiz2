import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:intl/intl.dart'; // Import the intl package for date formatting

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BottomNavigationBar(),
      ),
    );
  }
}

class AppBarHSIEdu extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHSIEdu({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF243975),
      leading: Container(
        margin: EdgeInsetsDirectional.only(
          start: 20,
        ),
        child: Image.asset("assets/icon/hsi.png"),
      ),
      title: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "EDU HSI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Open Sans",
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "v.2401-2001",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: "Open Sans",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarProfilHSIEdu extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarProfilHSIEdu({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profil",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Open Sans",
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "v.2401-2001",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: "Open Sans",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HSIEduProfilHeader extends StatelessWidget {
  const HSIEduProfilHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(
              start: 5,
              end: 10,
            ),
            child: Image.asset(
              "assets/icon/hsi.png",
              scale: 7,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Doli Anggia Harahap",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Monospace",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "ARN181-01061",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            margin: EdgeInsetsDirectional.only(
              start: 10,
              end: 5,
            ),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.pencil_ellipsis_rectangle,
                  color: Color(0xFF243975),
                  size: 24,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Ubah",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF243975),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    var current = 0.obs;
    final CarouselController carouselController = CarouselController();
    DateTime now = DateTime.now();
    String formattedDayOfWeek =
        DateFormat('EEEE, dd MMM yyyy HH:mm', 'id_ID').format(now);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          AppBarHSIEdu(),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              HSIEduGreetingPanel(),
              const SizedBox(
                height: 20,
              ),
              HSIEduCarousel(
                carouselController: carouselController,
                current: current,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Evaluasi",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Monospace",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: Get.width,
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                            color: Color(0xFFE9F0F8),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          "Majalah HSI",
                                          style: TextStyle(
                                              color: Color(0xFF243975),
                                              fontSize: 16,
                                              fontFamily: "Open Sans",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Aktif",
                                    style: TextStyle(
                                      color: Color(0xFF2DBE78),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Open Sans",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Kuis Majalah HSI Edisi 58",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Open Sans",
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "MAJALAH 1444H",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: "Open Sans",
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFE9F0F8),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.list_bullet,
                                        color: Color(0xFF243975),
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "10 Soal",
                                        style: TextStyle(
                                          color: Color(0xFF243975),
                                          fontSize: 12,
                                          fontFamily: "Open Sans",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: Get.width,
                                        padding: EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                            color: Color(0xFFE9F0F8),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.timer,
                                              color: Color(0xFF243975),
                                              size: 12,
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              formattedDayOfWeek,
                                              style: TextStyle(
                                                  color: Color(0xFF243975),
                                                  fontSize: 12,
                                                  fontFamily: "Open Sans",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Kerjakan",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF2DBE78)),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDayOfWeek =
        DateFormat('EEEE, dd MMM yyyy HH:mm', 'id_ID').format(now);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          AppBarProfilHSIEdu(),
          Column(
            children: [
              HSIEduProfilHeader(),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Divider(
                  color: Color(0xFF243975).withOpacity(0.5),
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: SvgPicture.asset(
                        'assets/icon/ic_whatsapp.svg',
                        color: Color(0xFF243975),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Nomor Whatsapp",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "60-173491418",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Image.asset(
                        'assets/icon/ic_home.png',
                        color: Color(0xFF243975),
                        scale: 2,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Alamat",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Selangor, Malaysia",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Image.asset(
                        'assets/icon/ic_ring.png',
                        color: Color(0xFF243975),
                        scale: 2,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Status Pernikahan / Jumlah Anak",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Menikah / 1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Divider(
                  color: Colors.grey.withOpacity(0.1),
                  thickness: 3,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Icon(
                        CupertinoIcons.headphones,
                        color: Color(0xFF243975),
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "List Admin",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Diah R.I.S",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(ARN171-15037)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Monospace",
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Placement Test Sandbox 3",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Group: CALONPESERTAARN",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "SANDBOX",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Monospace",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF57CB93),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Hubungi",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Open Sans",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icon/ic_whatsapp.svg',
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Divider(
                  color: Color(0xFF243975).withOpacity(0.5),
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Kurnia Adhiwibowo",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(ARN151-0538)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Monospace",
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Placement Test Sandbox 3",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Group: CALONPESERTAARN",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "SANDBOX",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Monospace",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF57CB93),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Hubungi",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Open Sans",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icon/ic_whatsapp.svg',
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Divider(
                  color: Color(0xFF243975).withOpacity(0.5),
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Edwin Saputra",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(ARN171-03056)",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Monospace",
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Silsilah Ilmiyyah Pembahasan Kitab Al Aqidah",
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Group: ARN183-01",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Program Reguler",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Monospace",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF57CB93),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Hubungi",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Open Sans",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icon/ic_whatsapp.svg',
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Divider(
                  color: Colors.grey.withOpacity(0.1),
                  thickness: 3,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Icon(
                        CupertinoIcons.exclamationmark_circle_fill,
                        color: Color(0xFF243975),
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Info Lainnya",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Icon(
                        CupertinoIcons.lock_rotation_open,
                        color: Color(0xFF243975),
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Ganti Password",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Icon(
                        CupertinoIcons.greaterthan_circle,
                        color: Color(0xFF243975),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Divider(
                  color: Color(0xFF243975).withOpacity(0.5),
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Icon(
                        CupertinoIcons.question_circle,
                        color: Color(0xFF243975),
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Bantuan",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Icon(
                        CupertinoIcons.greaterthan_circle,
                        color: Color(0xFF243975),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Divider(
                  color: Color(0xFF243975).withOpacity(0.5),
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Icon(
                        CupertinoIcons.lock_shield,
                        color: Color(0xFF243975),
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Kebijakan Privasi",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Monospace",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        start: 5,
                        end: 10,
                      ),
                      child: Icon(
                        CupertinoIcons.greaterthan_circle,
                        color: Color(0xFF243975),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Keluar",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white), // White background
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the border radius as needed
                              side: BorderSide(
                                color: Colors.red,
                              ), // Red border
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Coming Soon",
          style: TextStyle(
            fontSize: 28,
            fontFamily: "Open Sans",
            fontWeight: FontWeight.bold,
            color: Color(0xFF243975),
          ),
        ),
      ),
    );
  }
}

class HSIEduGreetingPanel extends StatelessWidget {
  const HSIEduGreetingPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Assalamualaikum,",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Open Sans",
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Doli Anggia Harahap",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Monospace",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "ARN181-01061",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Open Sans",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HSIEduCarousel extends StatelessWidget {
  const HSIEduCarousel({
    super.key,
    required this.carouselController,
    required this.current,
  });

  final CarouselController carouselController;
  final RxInt current;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
      ),
      child: Column(
        children: [
          CarouselSlider(
            items: imageSliders,
            carouselController: carouselController,
            options: CarouselOptions(
                aspectRatio: 16 / 9,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  current.value = index;
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Obx(
                  () => Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : const Color(0xFF243975))
                            .withOpacity(
                                current.value == entry.key ? 0.9 : 0.4)),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

final List<String> imgList = [
  'assets/carousel/carousel1.jpg',
  'assets/carousel/carousel2.jpg',
  'assets/carousel/carousel3.jpg',
  'assets/carousel/carousel4.jpg',
  'assets/carousel/carousel5.jpg'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [Beranda(), ComingSoon(), ComingSoon(), ProfilScreen()];
    }

    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.house_fill),
          title: "Beranda",
          textStyle: TextStyle(
            fontFamily: "Open Sans",
            fontSize: 12,
          ),
          activeColorPrimary: Color(0xFF243975),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.book_fill),
          title: "Akademi",
          textStyle: TextStyle(
            fontFamily: "Open Sans",
            fontSize: 12,
          ),
          activeColorPrimary: Color(0xFF243975),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.folder_badge_person_crop),
          title: "Reguler",
          textStyle: TextStyle(
            fontFamily: "Open Sans",
            fontSize: 12,
          ),
          activeColorPrimary: Color(0xFF243975),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.person),
          title: "Profil",
          activeColorPrimary: Color(0xFF243975),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style14, // Choose the nav bar style with this property.
    );
  }
}
