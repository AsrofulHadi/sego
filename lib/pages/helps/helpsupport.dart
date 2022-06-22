import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sego/css/constWarna.dart';

class HelpAndSupportsPage extends StatefulWidget {
  const HelpAndSupportsPage({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportsPage> createState() => _HelpAndSupportsPageState();
}

class _HelpAndSupportsPageState extends State<HelpAndSupportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basicWarna,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close)),
                    Text(
                      'Help and supports',
                      style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Divider(
                height: 2,
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20),
              child: Text("Help And Supports",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dictum libero non nisi elementum, eleifend dictum massa lacinia. Aenean a luctus mauris. Phasellus quis nunc sagittis, imperdiet ipsum ac, tincidunt neque. Proin tempus non tortor sit amet sagittis. Nam faucibus vehicula libero, a vehicula turpis sollicitudin nec. Aliquam non mi ante. Nunc fringilla scelerisque vulputate. Maecenas eleifend leo sed ipsum fringilla congue. Aliquam erat volutpat. Vivamus maximus non nibh ut mollis. Morbi vulputate porta lectus tincidunt iaculis. Cras egestas ullamcorper euismod',
                textAlign: TextAlign.justify,
                style: GoogleFonts.ubuntu(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dictum libero non nisi elementum, eleifend dictum massa lacinia. Aenean a luctus mauris. Phasellus quis nunc sagittis, imperdiet ipsum ac, tincidunt neque. Proin tempus non tortor sit amet sagittis. Nam faucibus vehicula libero, a vehicula turpis sollicitudin nec. Aliquam non mi ante. Nunc fringilla scelerisque vulputate. Maecenas eleifend leo sed ipsum fringilla congue. Aliquam erat volutpat. Vivamus maximus non nibh ut mollis. Morbi vulputate porta lectus tincidunt iaculis. Cras egestas ullamcorper euismod',
                textAlign: TextAlign.justify,
                style: GoogleFonts.ubuntu(fontSize: 16),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("segofacebook.com"),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("segograbthetwitter.com"),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("segoinstagram_official.com"),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
