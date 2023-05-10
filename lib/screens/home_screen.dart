import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/home_widgets/home_appbar.dart';
import 'package:doctor_app/widgets/home_widgets/home_body.dart';
import 'package:doctor_app/widgets/home_widgets/home_category_grid.dart';
import 'package:doctor_app/widgets/home_widgets/home_doctor_list.dart';
import 'package:doctor_app/widgets/home_widgets/home_navbar.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/soo-home';
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ashhLight,
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() => _isLoading = true);
          await Future.delayed(const Duration(milliseconds: 1500));
          setState(() => _isLoading = false);
        },
        child: _isLoading
            ? getLoadingIndicator
            : CustomScrollView(
                slivers: [
                  const HomeAppbar(),
                  const HomeBody(),
                  const HomeCategoryGrid(),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 25),
                      child: getTitleSeeAllText('TOP DOCTORS', () {}),
                    ),
                  ),
                  const HomeDoctorList(),
                ],
              ),
      ),
      bottomNavigationBar: const HomeNavBar(),
    );
  }

  Center get getLoadingIndicator => const Center(
        child: CircularProgressIndicator(color: homeSecondary),
      );
}
