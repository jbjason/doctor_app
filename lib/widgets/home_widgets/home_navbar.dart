import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/screens/doctors_screen.dart';
import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/screens/message_screen.dart';
import 'package:doctor_app/screens/profile_screen.dart';
import 'package:doctor_app/screens/video_call_screen.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            icon: const Icon(Icons.home_outlined, color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, VideoCallScreen.routeName);
            },
            icon: const Icon(Icons.medical_information_outlined,
                color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MessageScreen.routeName);
            },
            icon:
                const Icon(Icons.schedule_send_outlined, color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, DoctorsScreen.routeName);
            },
            icon: const Icon(Icons.share, color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            icon: const Icon(Icons.people_outline, color: homeSecondary),
          ),
        ],
      ),
    );
  }
}
