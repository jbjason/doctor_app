import 'package:doctor_app/constants/home_const.dart';
import 'package:flutter/material.dart';

class PPItemTopContainer extends StatelessWidget {
  const PPItemTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage('assets/2.jpg'),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // title
            Text(
              'Dr. Shovon Ahmed',
              style: TextStyle(
                color: homeTextColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.3,
              ),
            ),
            SizedBox(height: 3),
            // mobile
            Text(
              '+8801628343483',
              style: TextStyle(color: homeTextSecondary, fontSize: 10),
            ),
          ],
        ),
        const Spacer(),
        // Blood Group
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
            boxShadow: bodyShadow,
          ),
          child: const Text(
            'B+',
            style: TextStyle(color: homeTextSecondary, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
