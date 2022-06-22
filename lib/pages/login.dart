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
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bglogin.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sego',
                    style: GoogleFonts.lobster(
                        fontWeight: FontWeight.bold,
                        fontSize: 90,
                        color: hijau)),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                      decoration: const InputDecoration(
                          hintText: "Username",
                          prefixIcon: Material(
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Icon(Icons.person, color: hijau),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 13)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                          prefixIcon: const Material(
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Icon(Icons.lock, color: hijau),
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
                              color: hijau,
                            ),
                          )),
                      obscureText: _securetext,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
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
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: hijau),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                letterSpacing: 2,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 1,
                        color: basicWarna,
                        width: 100,
                      ),
                      const Text(
                        "OR",
                        style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                      Container(
                        height: 1,
                        color: basicWarna,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
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
                        height: 30,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: basicWarna),
                        ),
                        child: const Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                                letterSpacing: 2,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
