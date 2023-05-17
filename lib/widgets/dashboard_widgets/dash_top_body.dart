import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/dashboard_widgets/dash_t_body_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashTopBody extends StatelessWidget {
  const DashTopBody(
      {super.key,
      required this.size,
      required this.appointments,
      required this.doctors});
  final Size size;
  final int appointments;
  final int doctors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: getHomeGradient(homePrimaryColor),
      ),
      child: Row(
        children: [
          DashDBodyItem(
            count: appointments.toString(),
            icon: Icons.calendar_month_outlined,
            title: 'All Appointmetns',
          ),
          DashDBodyItem(
            count: doctors.toString(),
            icon: CupertinoIcons.person,
            title: 'Doctors',
          ),
        ],
      ),
    );
  }
}
