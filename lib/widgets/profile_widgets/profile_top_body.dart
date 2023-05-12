import 'package:doctor_app/constants/home_const.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math.dart' as math;

class PofileTopBody extends StatelessWidget {
  const PofileTopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .35,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // back Color Container
          Positioned(
            bottom: 0,
            left: -100,
            right: -100,
            height: size.height * .19,
            child: Transform(
              alignment: Alignment.centerLeft,
              transform: Matrix4.identity()..rotateZ(math.radians(-8)),
              child: const DecoratedBox(
                decoration: BoxDecoration(color: homePrimaryColor),
              ),
            ),
          ),
          Positioned.fill(
            bottom: size.height * .1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // image
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage('assets/2.jpg'),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.flip_camera_ios_outlined, size: 30),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // title
                Text(
                  'Jb Jason',
                  style: TextStyle(
                    color: homeTextColor,
                    letterSpacing: 1.3,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                // sub-title
                Text('@jason', style: TextStyle(color: homeTextColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
