import 'package:atre_website/Screens/navBar.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';

import '../BottomSheet.dart';
import 'centerCircleScreen.dart';
import 'groupImgScreen.dart';
import 'joinUsScreen.dart';
import 'ourPositions.dart';

class CareerPage extends StatefulWidget {
  const CareerPage({super.key});

  @override
  State<CareerPage> createState() => _CareerPageState();
}

class _CareerPageState extends State<CareerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: Column(
        children: [
          const NavBar(),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                const GroupImgScreen(),
                const JoinUsScreen(),
                const CenterCircleScreen(),
                const OurPositionsScreen(),
                AtreBottomSheet()
              ],
            )),
          )
        ],
      ),
    );
  }
}
