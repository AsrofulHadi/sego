import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sego/css/constWarna.dart';
import 'package:sego/pages/settings/settingmenus/menu_setting.dart';

class SettingPages extends StatefulWidget {
  const SettingPages({Key? key}) : super(key: key);

  @override
  State<SettingPages> createState() => _SettingPagesState();
}

class _SettingPagesState extends State<SettingPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        backgroundColor: hijau,
        title: Row(children: [
          const Icon(
            Icons.settings,
            size: 22,
          ),
          const SizedBox(
            width: 15,
          ),
          Text("Setting", style: GoogleFonts.ubuntu())
        ]),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            splashRadius: 22,
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ListSettings(
                    jenis: 'Menu',
                    iconnya: Icons.ramen_dining,
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingMenuPages(),
                          ));
                    }),
                ListSettings(
                  jenis: 'Restourant',
                  iconnya: Icons.storefront,
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingMenuPages()));
                  },
                ),
                ListSettings(
                  jenis: 'Users',
                  iconnya: Icons.person,
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingMenuPages()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListSettings extends StatelessWidget {
  final Function? onClick;
  final String jenis;
  final IconData iconnya;

  const ListSettings(
      {Key? key,
      required this.onClick,
      required this.jenis,
      required this.iconnya})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick!(),
      child: Container(
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
            color: hijau,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconnya,
              size: 40,
              color: Colors.white,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Setting ",
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  jenis,
                  style: GoogleFonts.ubuntu(fontSize: 11, color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
