// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntecImage extends StatelessWidget {
  const IntecImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileIntecImage(),
      desktop: (_) => DeskTopIntecImage(),
    );
  }

  Widget DeskTopIntecImage() => Container(
        width: double.infinity,
        child: Image.asset(
          myImages.inTecImg,
          fit: BoxFit.cover,
        ),
      );
  Widget MobileIntecImage() => Container(
        width: double.infinity,
        child: Image.asset(
          myImages.inTecImg,
          fit: BoxFit.cover,
        ),
      );
}
