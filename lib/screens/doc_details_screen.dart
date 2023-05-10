import 'package:doctor_app/widgets/doc_details_widgets/docd_appbar.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item4.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_top_delegate.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item1.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item2.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_navbar.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';

class DocDetailsScreen extends StatelessWidget {
  static const routeName = '/soow-description';
  const DocDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final doctor = doctors[0];
    final selectedDate = ValueNotifier<DateTime>(DateTime.now());
    final selectedSlot = ValueNotifier<int>(0);

    final infoItems = [
      const DocDInfoItem1(),
      DocDInfoItem2(selectedDate: selectedDate, selectedSlot: selectedSlot),
      DocDInfoItem4(doctor: doctor),
    ];

    return Scaffold(
      backgroundColor: ashhLight,
      body: DefaultTabController(
        length: infoItems.length,
        child: NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScrolled) => [
            const DocDAppBar(),
            SliverPersistentHeader(
              delegate: DocDTopDelegate(size: size),
              floating: true,
              pinned: true,
            ),
          ],
          body: TabBarView(children: infoItems),
        ),
      ),
      bottomNavigationBar: DocdNavBar(doctor: doctor),
    );
  }
}
