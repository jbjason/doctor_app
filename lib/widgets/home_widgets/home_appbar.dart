import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      backgroundColor: ashhLight,
      elevation: 10,
      pinned: true,
      title: Image.asset(
        'assets/welcome_logo2.png',
        height: 60,
        width: size.width * .4,
        fit: BoxFit.contain,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined, color: homeAppBar),
        ),
        Container(
          width: 37,
          height: 37,
          decoration: const BoxDecoration(
            color: Colors.cyan,
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('assets/2.jpg')),
          ),
        ),
        const SizedBox(width: 17),
      ],
    );
  }
}
