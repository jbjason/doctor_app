import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/profile_widgets/profile_item.dart';
import 'package:doctor_app/widgets/profile_widgets/profile_top_body.dart';
import 'package:flutter/material.dart';

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
        title: const Text('User Profile', style: TextStyle(color: homeAppBar)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PofileTopBody(),
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
