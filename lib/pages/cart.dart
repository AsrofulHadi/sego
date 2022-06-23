import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sego/css/constWarna.dart';

class CartPages extends StatefulWidget {
  const CartPages({Key? key}) : super(key: key);

  @override
  State<CartPages> createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijau,
        elevation: 1,
        title: Row(
          children: const [
            Icon(
              Icons.shopping_basket,
              size: 22,
            ),
            SizedBox(
              width: 15,
            ),
            Text('Cart Payment'),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                listPembelian('assets/menu1.jpg', "Rp. 170.000", 'Spaghetti',
                    'tanpa keterangan'),
                listPembelian('assets/menu2.jpg', "Rp. 22.000",
                    'Finufilu Vodka', 'level pedas 5'),
                listPembelian(
                    'assets/menu3.jpeg', "Rp. 8.000", 'Ice Tea', 'tanpa gula ')
              ],
            ),
          )),
          Container(
            height: MediaQuery.of(context).size.height / 8,
            color: Colors.white,
            child: Center(
                child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width / 1.2,
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
                  color: basicWarna,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.print, color: fontWarna),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Check Out",
                        style: GoogleFonts.ubuntu(
                            color: fontWarna,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                    const Spacer(),
                    Text(
                      "Rp. 200.000",
                      style: GoogleFonts.ubuntu(
                          color: fontWarna,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            )),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Card listPembelian(String urlgambar, harga, nama, desk) {
    return Card(
      elevation: 4,
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(urlgambar),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(harga,
                    style: GoogleFonts.ubuntu(
                        color: fontWarna,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Text(nama,
                    style: GoogleFonts.ubuntu(color: fontWarna, fontSize: 14)),
                Text(desk,
                    style: GoogleFonts.ubuntu(color: fontWarna, fontSize: 11)),
              ],
            ),
            const Spacer(),
            Material(
              borderRadius: BorderRadius.circular(8),
              elevation: 4,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit_note, size: 15, color: fontWarna)),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Material(
              borderRadius: BorderRadius.circular(8),
              elevation: 4,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete,
                          size: 15, color: Colors.grey[800])),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
