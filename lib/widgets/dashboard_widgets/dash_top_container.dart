import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/material.dart';

class DashTopContainer extends StatelessWidget {
  const DashTopContainer({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .12,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: getHomeGradient(homePrimaryColor),
        boxShadow: bodyShadow,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          // hello text
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hello Jason!',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 1.3,
                    wordSpacing: 1.3,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome to our Health dashboard',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    letterSpacing: 1.3,
                    wordSpacing: 1.3,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          // img
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/dash_img.png',
              width: size.width * .35,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
