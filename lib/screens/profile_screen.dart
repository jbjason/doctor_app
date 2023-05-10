import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/profile_widgets/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as math;

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ashhLight,
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        backgroundColor: ashhLight,
        leading: getBackButton(context),
        title: const Text(
          'User Profile',
          style: TextStyle(color: homeAppBar),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PofileTopBody(),
              const SizedBox(height: 15),
              ProfileItem(
                icon: Icons.nature_people_outlined,
                onTap: () {},
                title: 'Password Change',
              ),
              ProfileItem(
                icon: Icons.security_outlined,
                onTap: () {},
                title: 'Profile',
              ),
              ProfileItem(
                icon: Icons.notifications_outlined,
                onTap: () {},
                title: 'Notifications',
              ),
              ProfileItem(
                icon: Icons.rate_review_outlined,
                onTap: () {},
                title: 'Rate The App',
              ),
              ProfileItem(
                icon: Icons.privacy_tip_outlined,
                onTap: () {},
                title: 'Privacy Policy & Terms',
              ),
              ProfileItem(
                icon: Icons.power_settings_new,
                onTap: () {},
                title: 'LogOut',
              ),
              ProfileItem(
                icon: Icons.delete_outlined,
                onTap: () {},
                title: 'Delete Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PofileTopBody extends StatelessWidget {
  const PofileTopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .4,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            left: -100,
            right: -100,
            height: size.height * .24,
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
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage('assets/2.jpg'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Jb Jason',
                  style: TextStyle(
                    color: homeTextColor,
                    letterSpacing: 1.3,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '@jason',
                  style: TextStyle(
                    color: homeTextColor,
                    letterSpacing: 1.3,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
