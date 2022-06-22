import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sego/pages/cart.dart';
import 'package:sego/pages/diskon/setting_diskon.dart';
import 'package:sego/pages/helps/helpsupport.dart';
import 'package:sego/pages/reports/repots.dart';
import 'package:sego/pages/settings/settings.dart';

import '../css/constWarna.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      key: _key,
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5.8,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(8),
                            elevation: 4,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: IconButton(
                                    onPressed: () =>
                                        _key.currentState?.openDrawer(),
                                    icon: const Icon(Icons.menu, color: hijau)),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Center(
                            child: Text('Sego',
                                style: GoogleFonts.pacifico(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    color: hijau)),
                          ),
                          const Spacer(),
                          Material(
                            borderRadius: BorderRadius.circular(8),
                            elevation: 4,
                            child: Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CartPages()));
                                    },
                                    child: const Icon(Icons.shopping_basket,
                                        color: hijau),
                                  ),
                                  Material(
                                    borderRadius: BorderRadius.circular(8),
                                    elevation: 4,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: hijau,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Center(
                                        child: Text(
                                          "3",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(210, 209, 209, 1)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.ramen_dining, color: hijau),
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: "Cari menu",
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 13)),
                                ),
                              ),
                              const Icon(Icons.search, color: hijau),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.grey[200],
                height: 60,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        rowKategori("All", hijau, Colors.white, Colors.white,
                            FontAwesomeIcons.cloudMeatball),
                        const SizedBox(
                          width: 5,
                        ),
                        rowKategori("Foods", Colors.white, Colors.grey[800],
                            hijau, FontAwesomeIcons.bowlFood),
                        const SizedBox(
                          width: 5,
                        ),
                        rowKategori("Drinks", Colors.white, Colors.grey[800],
                            hijau, FontAwesomeIcons.bottleDroplet),
                        const SizedBox(
                          width: 5,
                        ),
                        rowKategori("Other", Colors.white, Colors.grey[800],
                            hijau, FontAwesomeIcons.sort),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      children: [
                        rowMenu(
                            "Steak Original",
                            "steak dengan daging sapi pilihan indonesia",
                            "Rp. 75.000",
                            'assets/menu1.jpg'),
                        rowMenu(
                            "Steak Original",
                            "steak dengan daging sapi pilihan indonesia",
                            "Rp. 75.000",
                            'assets/menu1.jpg'),
                        rowMenu(
                            "Steak Hot Lava",
                            "sensasi pedas daging sapi pilihan indonesia",
                            "Rp. 145.000",
                            'assets/menu2.jpg'),
                        rowMenu(
                            "Spaghetti Bolognes",
                            "kelezatan perpaduan bolognes dan spaghetti",
                            "Rp. 30.000",
                            'assets/menu3.jpeg'),
                        rowMenu(
                            "Steak Original",
                            "steak dengan daging sapi pilihan indonesia",
                            "Rp. 75.000",
                            'assets/menu1.jpg'),
                        rowMenu(
                            "Steak Original",
                            "steak dengan daging sapi pilihan indonesia",
                            "Rp. 75.000",
                            'assets/menu1.jpg'),
                        rowMenu(
                            "Steak Hot Lava",
                            "sensasi pedas daging sapi pilihan indonesia",
                            "Rp. 145.000",
                            'assets/menu2.jpg'),
                        rowMenu(
                            "Spaghetti Bolognes",
                            "kelezatan perpaduan bolognes dan spaghetti",
                            "Rp. 30.000",
                            'assets/menu3.jpeg')
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 95, 90, 90)
                                      .withOpacity(0.4),
                                  spreadRadius: 1.4,
                                  blurRadius: 3,
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                              color: hijau,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                Icons.shopping_basket_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "4 Items",
                                style: TextStyle(
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                              const Spacer(),
                              Container(
                                height: 40,
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                  child: Text(
                                    "Rp. 250.000",
                                    style: TextStyle(
                                        letterSpacing: 2,
                                        color: hijau,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
      drawer: menuSamping(context),
    );
  }

  Drawer menuSamping(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Column(
        children: [
          Container(
            color: hijau,
            height: 100,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "M. Asroful Hadi",
                      style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      "Cashier",
                      style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 20.0, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(210, 209, 209, 1)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(217, 216, 216, 1)
                            .withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: hijau,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.food_bank),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Dashboard",
                      style: GoogleFonts.ubuntu(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 20.0, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingDiskon()));
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(210, 209, 209, 1)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(217, 216, 216, 1)
                            .withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.discount),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Discount/Voucher",
                      style: GoogleFonts.ubuntu(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 20.0, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReportsPage()));
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(210, 209, 209, 1)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(217, 216, 216, 1)
                            .withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.line_axis),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Repots",
                      style: GoogleFonts.ubuntu(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 20.0, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingPages()));
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(210, 209, 209, 1)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(217, 216, 216, 1)
                            .withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.settings),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Settings",
                      style: GoogleFonts.ubuntu(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 20.0, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HelpAndSupportsPage()));
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(210, 209, 209, 1)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(217, 216, 216, 1)
                            .withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.help_outline),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Help Support",
                      style: GoogleFonts.ubuntu(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 20.0, top: 2, bottom: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromRGBO(210, 209, 209, 1)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(217, 216, 216, 1)
                          .withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.lock),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Sign Out",
                    style: GoogleFonts.ubuntu(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container rowMenu(String judul, desk, harga, urlimage) {
    return Container(
      height: 215,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(210, 209, 209, 1)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(217, 216, 216, 1).withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: Image(
              image: AssetImage(urlimage),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
                ),
                Text(
                  desk,
                  style:
                      GoogleFonts.ubuntu(fontSize: 11, color: Colors.grey[600]),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  harga,
                  style: GoogleFonts.ubuntu(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container rowKategori(
      String judul, Color warna, huruf, warnaicon, IconData icon) {
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(210, 209, 209, 1)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(217, 216, 216, 1).withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: warna,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: warnaicon,
            size: 20,
          ),
          Text(
            judul,
            style: GoogleFonts.ubuntu(color: huruf),
          ),
        ],
      ),
    );
  }
}
