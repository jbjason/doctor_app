import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_top_container.dart';
import 'package:flutter/material.dart';

class DocDTopDelegate extends SliverPersistentHeaderDelegate {
  const DocDTopDelegate({required this.size});
  final Size size;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: ashhLight,
      child: Column(
        children: [
          // doctors body at top
          DocDTopContainer(doctor: doctors[0]),
          // tab Bars (categories)
          Container(
            height: 55,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(11),
            ),
            child: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              indicatorColor: homePrimaryColor,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.5), color: homeAppBar),
              labelColor: Colors.white,
              tabs: const [
                Tab(text: 'OverView'),
                Tab(text: 'Schedule'),
                Tab(text: 'Reveiws'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => size.height * .384;

  @override
  double get minExtent => size.height * .384;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
