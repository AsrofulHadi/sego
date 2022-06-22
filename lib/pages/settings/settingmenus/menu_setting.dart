import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sego/css/constWarna.dart';

class SettingMenuPages extends StatefulWidget {
  const SettingMenuPages({Key? key}) : super(key: key);

  @override
  State<SettingMenuPages> createState() => _SettingMenuPagesState();
}

class _SettingMenuPagesState extends State<SettingMenuPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 70,
              color: basicWarna,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 18.0, right: 18.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    Text("Setting menu",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Container(
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
                          decoration: const InputDecoration(
                              hintText: "Category menu",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: InkWell(
                          onTap: () {},
                          child: Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: basicWarna,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Ctgory',
                                      style: GoogleFonts.ubuntu(),
                                    ),
                                    const Spacer(),
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
                                          child: Icon(Icons.star_border,
                                              size: 20,
                                              color: Colors.grey[800]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Container(
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
                          decoration: const InputDecoration(
                              hintText: "Name menu",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: InkWell(
                          onTap: () {},
                          child: Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: basicWarna,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Name',
                                      style: GoogleFonts.ubuntu(),
                                    ),
                                    const Spacer(),
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
                                          child: Icon(FontAwesomeIcons.bowlFood,
                                              size: 20,
                                              color: Colors.grey[800]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Container(
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
                          decoration: const InputDecoration(
                              hintText: "Price menu",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: InkWell(
                          onTap: () {},
                          child: Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: basicWarna,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Price',
                                      style: GoogleFonts.ubuntu(),
                                    ),
                                    const Spacer(),
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
                                          child: Icon(FontAwesomeIcons.barcode,
                                              size: 20,
                                              color: Colors.grey[800]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Container(
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: basicWarna),
                          onPressed: () {},
                          child: Center(
                              child: Text("Choose image",
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w600))),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: InkWell(
                          onTap: () {},
                          child: Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: basicWarna,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Image',
                                      style: GoogleFonts.ubuntu(),
                                    ),
                                    const Spacer(),
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
                                          child: Icon(FontAwesomeIcons.image,
                                              size: 20,
                                              color: Colors.grey[800]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Container(
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: basicWarna),
                          onPressed: () {},
                          child: Center(
                              child: Text("Add BOP",
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w600))),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: InkWell(
                          onTap: () {},
                          child: Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: basicWarna,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add',
                                      style: GoogleFonts.ubuntu(),
                                    ),
                                    const Spacer(),
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
                                          child: Icon(FontAwesomeIcons.listOl,
                                              size: 20,
                                              color: Colors.grey[800]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
