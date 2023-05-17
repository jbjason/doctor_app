import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const_get.dart';

class DashTBodyItem extends StatelessWidget {
  const DashTBodyItem({
    Key? key,
    required this.count,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final String count;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55,
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: getHomeGradient(Colors.white),
        ),
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(icon),
                  ),
                  Text(title),
                ],
              ),
              Text(count),
            ],
          ),
        ),
      ),
    );
  }
}
