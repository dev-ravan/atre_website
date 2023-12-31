import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Utils/texts.dart';
import '../../Widgets/hoverJobContainer.dart';

class OurPositionsScreen extends StatelessWidget {
  const OurPositionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => DesktopOurPositions(),
      mobile: (_) => MobileOurPositions(),
    );
  }

  Widget DesktopOurPositions() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 70),
      child: Column(
        children: [
          myTexts.greenMidText(text: "Our Open Positions"),
          const SizedBox(
            height: 8,
          ),
          myTexts.dmSans16Grey(
              text: "We're always on the lookout for talented people."),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 1000,
            child: GridView.builder(
              itemCount: vacancyList.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 12 / 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  crossAxisCount: 2),
              itemBuilder: (context, i) => hoverJobContainer(
                onTap: () {},
                role: vacancyList[i].role!,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            myTexts.dmSans17Bold(
                text:
                    "Don’t see something you fit into? No worries Please fill the form and we'll be in touch. "),
            InkWell(
                onTap: () {}, child: myTexts.greenDmSans17Bold(text: "Apply"))
          ])
        ],
      ),
    );
  }

  Widget MobileOurPositions() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myTexts.greenMidText(text: "Our Open positions"),
          const SizedBox(
            height: 8,
          ),
          myTexts.dmSans16Grey(
              text: "We're always on the lookout for talented people."),
          const SizedBox(
            height: 50,
          ),
          GridView.builder(
            itemCount: vacancyList.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 12 / 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                crossAxisCount: 1),
            itemBuilder: (context, i) => hoverJobContainer(
              onTap: () {},
              role: vacancyList[i].role!,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          myTexts.dmSans17Bold(
              text:
                  "Don’t see something you fit into? No worries Please fill the form and well be in touch.")
        ],
      ),
    );
  }
}

class AvailableVacancy {
  String? role;
  String? subRole;

  AvailableVacancy({required this.role, required this.subRole});
}

List<AvailableVacancy> vacancyList = [
  AvailableVacancy(role: "UX/UI DESIGNER", subRole: "Porto, Portugal Design"),
  AvailableVacancy(
      role: "FULLSTACK DEVELOPER", subRole: "Porto, Portugal Design"),
  AvailableVacancy(
      role: "JUNIOR ROBOTIC ENGINEER", subRole: "Porto, Portugal Design"),
  AvailableVacancy(role: "PYTHON DEVELOPER", subRole: "Porto, Portugal Design"),
  AvailableVacancy(
      role: "JUNIOR DESIGN ENGINEER", subRole: "Porto, Portugal Design"),
];
