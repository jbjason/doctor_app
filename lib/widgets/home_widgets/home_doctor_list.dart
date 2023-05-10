import 'package:doctor_app/screens/doc_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';

class HomeDoctorList extends StatelessWidget {
  const HomeDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) => InkWell(
          onTap: () => Navigator.pushNamed(context, DocDetailsScreen.routeName),
          child: Container(
            height: 125,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              gradient: bodyGradient,
              boxShadow: bodyShadow,
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Row(
              children: [
                Image.asset(doctors[i].img, width: 130, fit: BoxFit.contain),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // title
                        getTitleText(doctors[i].title, homeAppBar),
                        // subtitle
                        getDoctorCategory(doctors[i].subtitle),
                        // reviews & fees
                        _reviewsAndFees(doctors[i].review, doctors[i].fees),
                        const Divider(color: Color(0xFFBDBDBD)),
                        // location
                        _locationScheduleText(
                            Icons.location_on_outlined, doctors[i].location),
                        // schedule
                        _locationScheduleText(
                            Icons.schedule, doctors[i].schedule),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        childCount: doctors.length,
      ),
    );
  }

  Widget _locationScheduleText(IconData icon, String title) => Row(
        children: [
          Icon(icon, size: 11),
          const SizedBox(width: 2),
          Text(
            title,
            style: const TextStyle(fontSize: 11, color: homeTextColor),
          ),
        ],
      );

  Widget _reviewsAndFees(int review, double fees) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: '★★★☆☆',
              style: const TextStyle(color: Colors.cyan, fontSize: 10),
              children: [
                TextSpan(
                    text: ' $review Reviews',
                    style: const TextStyle(color: Colors.cyan, fontSize: 8)),
              ],
            ),
          ),
          Text(
            '\$ $fees',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );
}
