import 'package:doctor_app/models/doctor.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';

class DocDTopContainer extends StatelessWidget {
  const DocDTopContainer({super.key, required this.doctor});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // img
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3.5),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(doctor.img), fit: BoxFit.contain),
                ),
              ),
              const SizedBox(width: 16),
              // title, specialities, place
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTitleText(doctor.title, homeAppBar),
                  const SizedBox(height: 8),
                  getDoctorCategory(doctor.subtitle),
                  const SizedBox(height: 10),
                  getSubTitleText(
                      'Govt. Bangla Hostpital', const Color(0xFFBDBDBD)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Experience, reviews, Location
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getSubTitleText('Experience', const Color(0xFFBDBDBD)),
                  const SizedBox(height: 5),
                  const Text('5+ years'),
                ],
              ),
              Container(height: 35, width: .6, color: const Color(0xFFD6D6D6)),
              Column(
                children: [
                  getSubTitleText('Reviews', const Color(0xFFBDBDBD)),
                  const SizedBox(height: 5),
                  const Text('★4.5 (20)'),
                ],
              ),
              Container(height: 35, width: .6, color: const Color(0xFFD6D6D6)),
              Column(
                children: [
                  getSubTitleText('Location', const Color(0xFFBDBDBD)),
                  const SizedBox(height: 5),
                  const Text('Mirpur, Dhaka'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
