import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sego/css/constWarna.dart';
import 'package:sego/pages/homepage.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  bool _securetext = true;

  showHide() {
    setState(() {
      _securetext = !_securetext;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basicWarna,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width / 1.78,
                child: Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -3,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Sego',
                              style: GoogleFonts.pacifico(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 100,
                                  color: fontWarna)),
                        ),
                      ),
                      const Positioned(
                        left: 130,
                        top: 55,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image(image: AssetImage('assets/logo.png')),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 55,
                        child: Center(
                          child: Text('eat & drink then pay',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: Material(
                  elevation: 2.0,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: TextFormField(
                    validator: (e) {
                      return null;

                      // if (e.isEmpty) {
                      //   return "Username tidak boleh kosong";
                      // }
                    },
                    // onSaved: (e) => username = e,
                    // cursorColor: basicWarna,
                    decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Material(
                          elevation: 0,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Icon(Icons.person, color: fontWarna),
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 13)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: Material(
                  elevation: 2.0,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: TextFormField(
                    validator: (e) {
                      return null;

                      // if (e.isEmpty) {
                      //   return "Harap isi Password Anda";
                      // }
                    },
                    //   onSaved: (e) => password = e,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Material(
                          elevation: 0,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Icon(Icons.lock, color: fontWarna),
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 13),
                        suffixIcon: IconButton(
                          splashRadius: 20,
                          onPressed: showHide,
                          icon: Icon(
                            _securetext
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: fontWarna,
                          ),
                        )),
                    obscureText: _securetext,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const HomePages()),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: fontWarna),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              letterSpacing: 2,
                              color: basicWarna,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Developed by ",
                      style: GoogleFonts.ubuntu(fontSize: 11)),
                  Text("youknowme",
                      style: GoogleFonts.ubuntu(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
