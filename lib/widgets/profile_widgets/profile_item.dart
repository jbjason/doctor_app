import 'package:doctor_app/constants/home_const.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.title});
  final VoidCallback onTap;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(18),
          right: Radius.circular(50),
        ),
      ),
      child: ListTile(
        onTap: () => onTap,
        // contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        leading: CircleAvatar(
          backgroundColor: homePrimaryColor,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: homeSecondary, fontSize: 12, letterSpacing: 1.3),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: homePrimaryColor),
      ),
    );
  }
}
