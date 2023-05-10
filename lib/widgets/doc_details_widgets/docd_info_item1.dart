import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';

class DocDInfoItem1 extends StatelessWidget {
  const DocDInfoItem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'I would like to show the world today as an ant sees it and tomorrow as the moon sees it.' *
                  2,
            ),
            const SizedBox(height: 20),
            const Text(
              'Education History',
              style: TextStyle(
                color: homeTextColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            _getEducationHistory('Diploma in Pharmacy   (2020-2023)'),
            _getEducationHistory('FCPS   (2018-2020)'),
            _getEducationHistory('MBBS   (2015-2018)'),
            const SizedBox(height: 14),
            const Text(
              'Specializations',
              style: TextStyle(
                color: homeTextColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              children: [
                getDoctorCategory('Heart Sergery'),
                const SizedBox(width: 10),
                getDoctorCategory('Heart Mobility'),
                const SizedBox(width: 10),
                getDoctorCategory('Heart Pumb Ring'),
                const SizedBox(width: 10),
                getDoctorCategory('Heart Pumb Ring'),
                const SizedBox(width: 10),
                getDoctorCategory('Heart Pumb Ring'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getEducationHistory(String title) => Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
        child: Row(
          children: [
            Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: homeAppBar),
            ),
            const SizedBox(width: 10),
            getSubTitleText(title, homeAppBar),
          ],
        ),
      );
}
