import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sego/css/constWarna.dart';

class SettingDiskon extends StatefulWidget {
  const SettingDiskon({Key? key}) : super(key: key);

  @override
  State<SettingDiskon> createState() => _SettingDiskonState();
}

class _SettingDiskonState extends State<SettingDiskon> {
  TextEditingController? namamenu;

  tampilkanRubah(String nama) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(nama),
            content: Card(
              elevation: 3,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.discount_outlined,
                      color: basicWarna,
                    ),
                    hintText: "discount",
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: basicWarna),
                  onPressed: () {
                    namamenu!.clear();
                    showSuccess();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Ok',
                    style: GoogleFonts.ubuntu(color: Colors.grey[800]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: basicWarna),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: GoogleFonts.ubuntu(color: Colors.grey[800]),
                  ))
            ],
          );
        });
  }

  showSnackbar() {
    Get.snackbar(
      'Opss!',
      'No menu choosed',
      onTap: (_) {},
      colorText: Colors.white,
      backgroundColor: const Color.fromARGB(255, 239, 44, 44),
      duration: const Duration(seconds: 4),
      animationDuration: const Duration(milliseconds: 800),
      snackPosition: SnackPosition.TOP,
    );
  }

  showSuccess() {
    Get.snackbar(
      'Nice',
      'Discunt added',
      onTap: (_) {},
      colorText: Colors.white,
      backgroundColor: const Color.fromARGB(255, 73, 228, 49).withOpacity(0.5),
      duration: const Duration(seconds: 4),
      animationDuration: const Duration(milliseconds: 800),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  @override
  void initState() {
    super.initState();
    namamenu = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: basicWarna,
        automaticallyImplyLeading: false,
        title: Text(
          'Setting Discount',
          style: GoogleFonts.ubuntu(color: Colors.grey[800]),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 20,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromRGBO(210, 209, 209, 1)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    // const Icon(Icons.ramen_dining, color: basicWarna),
                    Expanded(
                      child: TextFormField(
                        controller: namamenu,
                        decoration: const InputDecoration(
                            hintText: "Cari menu",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: InkWell(
                        onTap: () {
                          if (namamenu!.text.isEmpty) {
                            showSnackbar();
                          } else {
                            tampilkanRubah(namamenu!.text);
                          }
                        },
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            width: 120,
                            height: 45,
                            decoration: BoxDecoration(
                                color: basicWarna,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'set diskon',
                                  style: GoogleFonts.ubuntu(),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 4.0, top: 4.0),
                                  child: Material(
                                    color: basicWarna,
                                    borderRadius: BorderRadius.circular(8),
                                    elevation: 4,
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Icon(Icons.discount_outlined,
                                          size: 20, color: Colors.grey[800]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
