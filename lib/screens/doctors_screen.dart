import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/common_widgets/doc_search_field.dart';
import 'package:doctor_app/widgets/doc_widgets/doc_fliter_icon.dart';
import 'package:doctor_app/widgets/home_widgets/home_doctor_list.dart';
import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  static const routeName = '/doctors-screen';
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: kToolbarHeight,
            backgroundColor: ashhLight,
            centerTitle: true,
            elevation: 10,
            pinned: true,
            leading: getBackButton(context),
            title: const Text(
              'Our Providers',
              style: TextStyle(color: homeAppBar),
            ),
            actions: const [SizedBox(width: 20), DocFilterIcon()],
          ),
          const SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(child: DocSearchField()),
          ),
          const HomeDoctorList(),
        ],
      ),
    );
  }
}
