import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/p_patient_widgts/p_p_item_bottom_container.dart';
import 'package:doctor_app/widgets/p_patient_widgts/p_p_item_top_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PPatientItem extends StatelessWidget {
  const PPatientItem({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final date = DateFormat.MMMEd().format(DateTime.now());
    final time = DateFormat.jm().format(DateTime.now());
    final endTime =
        DateFormat.jm().format(DateTime.now().add(const Duration(minutes: 30)));
    return Container(
      height: 165,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      decoration: BoxDecoration(
        gradient: getHomeGradient(Colors.white),
        boxShadow: bodyShadow,
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        children: [
          // patient img, title & email
          const PPItemTopContainer(),
          const SizedBox(height: 7),
          // grey card, date, starting & ending time
          Container(
            height: 45,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(7.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getPatientDateTime(Icons.calendar_month, date),
                getPatientDateTime(CupertinoIcons.clock, '$time - $endTime'),
                getPatientDateTime(Icons.person_outline, '27 years'),
              ],
            ),
          ),
          const Spacer(),
          const Divider(),
          // location & view Button
          const PPItemBottomContainer(),
        ],
      ),
    );
  }

  Row getPatientDateTime(IconData icon, String text) => Row(
        children: [
          Icon(icon, size: 15, color: homeSecondary),
          const SizedBox(width: 5),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 11, color: homeTextColor),
          )
        ],
      );
}
