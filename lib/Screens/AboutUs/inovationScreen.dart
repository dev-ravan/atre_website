import 'package:atre_website/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Utils/Sizes.dart';
import '../../Utils/texts.dart';

class InnovationScreen extends StatelessWidget {
  const InnovationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      desktop: (_) => DeskTopInnovation(),
      mobile: (_) => MobileInnovation(),
    );
  }

  Widget DeskTopInnovation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(myImages.innovationImg),
          )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myTexts.boldBlackText(
                        text: "Leading through innovation and creativity"),
                    const SizedBox(
                      height: 20,
                    ),
                    myTexts.dmSans16Grey(
                        text:
                            "At Atre, the focus is to advance health responsibly through the use of cutting-edge technology. We believe that by leveraging the power of robotics, ML, and AI, we can improve patient outcomes and support the medical professionals who care for them."),
                    const SizedBox(
                      height: 20,
                    ),
                    myTexts.dmSans16Grey(
                        text:
                            "Our team is composed of experts in the fields of robotics, AI, and medicine, all of whom are dedicated to developing innovative solutions that improve patient care. We are committed to responsible innovation and are dedicated to ensuring that our technology is safe, effective, and accessible to all, regardless of their economic or social circumstances."),
                    const SizedBox(
                      height: 20,
                    ),
                    myTexts.dmSans16Grey(
                        text:
                            "Our current focus is on teleoperated medical devices, such as our teleoperated ultrasound system. We believe that by providing medical professionals with remote diagnostic tools, we can democratize quality healthcare."),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget MobileInnovation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(myImages.innovationImg),
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              myTexts.boldBlackText(
                  text: "Leading through innovation and creativity"),
              const SizedBox(
                height: 20,
              ),
              myTexts.dmSans16Grey(
                  text:
                      "At Atre, the focus is to advance health responsibly through the use of cutting-edge technology. We believe that by leveraging the power of robotics, ML, and AI, we can improve patient outcomes and support the medical professionals who care for them."),
              const SizedBox(
                height: 20,
              ),
              myTexts.dmSans16Grey(
                  text:
                      "Our team is composed of experts in the fields of robotics, AI, and medicine, all of whom are dedicated to developing innovative solutions that improve patient care. We are committed to responsible innovation and are dedicated to ensuring that our technology is safe, effective, and accessible to all, regardless of their economic or social circumstances."),
              const SizedBox(
                height: 20,
              ),
              myTexts.dmSans16Grey(
                  text:
                      "Our current focus is on teleoperated medical devices, such as our teleoperated ultrasound system. We believe that by providing medical professionals with remote diagnostic tools, we can democratize quality healthcare."),
            ],
          )
        ],
      ),
    );
  }
}
