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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        child: ListTile(
          onTap: () => onTap,
          leading: CircleAvatar(backgroundColor: homeAppBar, child: Icon(icon)),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
