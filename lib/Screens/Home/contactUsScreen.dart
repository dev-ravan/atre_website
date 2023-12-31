// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utils/Sizes.dart';
import '../../Utils/images.dart';
import '../../Widgets/myWidgets.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileContactUs(),
      desktop: (_) => DeskTopContactUs(),
    );
  }

  Widget DeskTopContactUs() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Palette.white,
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          image: AssetImage(
            myImages.bg_circle_1,
          ),
        ),
      ),
      child: Column(
        children: [
          myTexts.greenTitleText(text: "Contact Us"),
          const SizedBox(
            height: 70,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 500,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(left: 250, right: 50),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Palette.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10.0,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myTexts.blackMidText(text: "Name"),
                      myWidgets.myTextField(),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myTexts.blackMidText(text: "Organization Name"),
                              myWidgets.myTextField(),
                              myTexts.blackMidText(text: "Email ID"),
                              myWidgets.myTextField(),
                            ],
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myTexts.blackMidText(text: "Designation"),
                              myWidgets.myTextField(),
                              myTexts.blackMidText(text: "Contact Number"),
                              myWidgets.myTextField(),
                            ],
                          ))
                        ],
                      ),
                      myTexts.blackMidText(text: "Describe Briefly"),
                      myWidgets.describeField(),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: myWidgets.contactUsButton())
                    ],
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  children: [
                    myTexts.blackTitleText(text: "Write to us"),
                    myTexts.greenMidText(text: "info@atrehealthtech.com"),
                    myTexts.dmSans16Grey(
                        text: "We will back with in 2 business days."),
                    const SizedBox(
                      height: 40,
                    ),
                    Divider(
                      color: Palette.grey,
                      endIndent: 100,
                      indent: 100,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          myTexts.blackTitleText(text: "Reach us here"),
                          const SizedBox(
                            height: 10,
                          ),
                          myTexts.dmSans16Grey(text: "Atre Health Tech"),
                          myTexts.dmSans16Grey(
                              text:
                                  "45, Avinashi Road, \nPSG Foundry, Neelambur, \nCoimbatore, Tamil Nadu."),
                          const SizedBox(
                            height: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              child: const HtmlWidget(
                                  '''<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15662.846436905396!2d77.092782!3d11.060235!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba857b021b5c403%3A0x249dd10bf4756b37!2sAtre%20Health%20tech!5e0!3m2!1sen!2sin!4v1690441436343!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'''),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }

  Widget MobileContactUs() {
    return Container(
      color: Palette.white,
      child: Column(
        children: [
          myTexts.greenTitleText(text: "Contact Us"),
          const SizedBox(
            height: 70,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 500,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Palette.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10.0,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myTexts.blackMidText(text: "Name"),
                      myWidgets.myTextField(),
                      myTexts.blackMidText(text: "Organization Name"),
                      myWidgets.myTextField(),
                      myTexts.blackMidText(text: "Email ID"),
                      myWidgets.myTextField(),
                      myTexts.blackMidText(text: "Designation"),
                      myWidgets.myTextField(),
                      myTexts.blackMidText(text: "Contact Number"),
                      myWidgets.myTextField(),
                      myTexts.blackMidText(text: "Describe Briefly"),
                      myWidgets.describeField(),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: myWidgets.contactUsButton())
                    ],
                  )),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  myTexts.blackTitleText(text: "Write to us"),
                  myTexts.greenMidText(text: "info@atrehealthtech.com"),
                  myTexts.dmSans16Grey(
                      text: "We will back with in 2 business days."),
                  const SizedBox(
                    height: 40,
                  ),
                  Divider(
                    color: Palette.grey,
                    endIndent: 100,
                    indent: 100,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        myTexts.blackTitleText(text: "Reach us here"),
                        const SizedBox(
                          height: 10,
                        ),
                        myTexts.dmSans16Grey(text: "Atre Health Tech"),
                        myTexts.dmSans16Grey(
                            text:
                                "45, Avinashi Road, \nPSG Foundry, Neelambur, \nCoimbatore, Tamil Nadu."),
                        const SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            child: const HtmlWidget(
                                '''<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15662.846436905396!2d77.092782!3d11.060235!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba857b021b5c403%3A0x249dd10bf4756b37!2sAtre%20Health%20tech!5e0!3m2!1sen!2sin!4v1690441436343!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'''),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
