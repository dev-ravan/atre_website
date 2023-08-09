// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/onHover.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileNavBar(),
      desktop: (_) => DeskTopNavBar(context),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 2.0), //(x,y)
          blurRadius: 2.0,
          spreadRadius: 2)
    ]),
    height: 70,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [navLogo(), const Icon(Icons.menu)],
      ),
    ),
  );
}

Widget DeskTopNavBar(BuildContext context) {
  return Container(
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(color: Colors.grey.withOpacity(0.3), spreadRadius: 2)
    ]),
    height: 70,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 140),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo(),
          Row(
            children: [
              navButton(
                  text: 'Home',
                  onTap: () {
                    print("Home");
                    return context.go("/");
                  }),
              const SizedBox(
                width: 20,
              ),
              navButton(
                  text: 'About Us',
                  onTap: () {
                    print("About Us");

                    return context.go("/about_us");
                  }),
              const SizedBox(
                width: 20,
              ),
              navButton(
                  text: 'Career',
                  onTap: () {
                    print("Career");

                    return context.go("/career");
                  }),
              const SizedBox(
                width: 20,
              ),
              navButton(text: 'Product', onTap: () {}),
              const SizedBox(
                width: 20,
              ),
              navButton(text: 'News & Articles', onTap: () {})
            ],
          ),
        ],
      ),
    ),
  );
}

Widget navButton({required String text, required Function onTap}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 12),
    child: OnHover(
      builder: (bool isHovered) {
        return GestureDetector(
          onTap: onTap as void Function(),
          child: Text(text,
              style: TextStyle(
                  color: !isHovered ? Colors.black : Palette.primary,
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.normal)),
        );
      },
    ),
  );
}

Widget navLogo() {
  return Text(
    "atre",
    style: GoogleFonts.jost(
        color: Palette.primary, fontWeight: FontWeight.w500, fontSize: 32),
  );
}
