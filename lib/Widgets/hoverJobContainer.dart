import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:svg_flutter/svg.dart';

import '../Utils/colors.dart';
import '../Utils/icons.dart';
import '../Utils/texts.dart';

Widget hoverJobContainer({required Function onTap, required String role}) {
  return HoverWidget(
      hoverChild: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Palette.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 0.5,
              color: Palette.grey,
            ),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 0,
                spreadRadius: 0,
                color: Color.fromRGBO(140, 140, 140, 0.10),
              ),
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 7,
                spreadRadius: 0,
                color: Color.fromRGBO(140, 140, 140, 0.10),
              ),
              BoxShadow(
                offset: Offset(10, 7),
                blurRadius: 12,
                spreadRadius: 0,
                color: Color.fromRGBO(140, 140, 140, 0.09),
              ),
              BoxShadow(
                offset: Offset(22, 17),
                blurRadius: 17,
                spreadRadius: 0,
                color: Color.fromRGBO(140, 140, 140, 0.05),
              ),
              BoxShadow(
                offset: Offset(40, 29),
                blurRadius: 20,
                spreadRadius: 0,
                color: Color.fromRGBO(140, 140, 140, 0.01),
              ),
              BoxShadow(
                offset: Offset(62, 46),
                blurRadius: 22,
                spreadRadius: 0,
                color: Color.fromRGBO(140, 140, 140, 0.00),
              )
            ]),
        child: Row(
          children: [
            Expanded(child: SvgPicture.asset(myIcons.career)),
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myTexts.midBlackText(text: role),
                    // myTexts.dmSans16Grey(text: subRole)
                  ],
                )),
            Expanded(
                child: InkWell(
              onTap: onTap as void Function(),
              child: Row(
                children: [
                  myTexts.greenMiniText(text: "Apply"),
                  Icon(
                    Icons.arrow_forward,
                    color: Palette.primary,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
      onHover: (value) {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Palette.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 0.5,
              color: Palette.grey,
            )),
        child: Row(
          children: [
            Expanded(child: SvgPicture.asset(myIcons.career)),
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myTexts.midBlackText(text: role),
                    // myTexts.dmSans16Grey(text: subRole)
                  ],
                )),
            Expanded(
                child: Row(
              children: [
                myTexts.greenMiniText(text: "Apply"),
                Icon(
                  Icons.arrow_forward,
                  color: Palette.primary,
                )
              ],
            )),
          ],
        ),
      ));
}
