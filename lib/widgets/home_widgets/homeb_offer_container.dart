import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';

class HomeBOfferContainer extends StatelessWidget {
  const HomeBOfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        // B2EBF2 80DDEA 4DD0E1
        gradient: getHomeGradient(homePrimaryColor),
        boxShadow: bodyShadow,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Stack(
        children: [
          // doctor & title text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _offerText('Looking For Your Desire'),
              _offerText('Specialist Doctor ?'),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    width: 2.5,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF3D00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getTitleText('Dr. Al Jubayer', Colors.white),
                      getSubTitleText('Medicine & Hear Specialist',
                          const Color(0xB3FFFFFF)),
                      const SizedBox(height: 10),
                      getDoctorCategory('Good Health Clinic'),
                    ],
                  ),
                ],
              )
            ],
          ),
          // doctor img
          Positioned(
            right: -30,
            top: 0,
            bottom: 0,
            child: Image.asset(
              'assets/doctor/doc2.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _offerText(String title) => Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
}
