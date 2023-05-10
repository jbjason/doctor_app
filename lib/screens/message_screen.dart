import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/widgets/common_widgets/doc_search_field.dart';
import 'package:doctor_app/widgets/message_widgets/message_listitem.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  static const routeName = '/message-screen';
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ashhLight,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height * .15,
            toolbarHeight: kToolbarHeight,
            centerTitle: true,
            pinned: true,
            floating: true,
            snap: true,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Messaging'),
            ),
            backgroundColor: homeAppBar,
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(60)),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: DocSearchField(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) =>
                  MessageListItem(doctor: doctors[i % doctors.length]),
              childCount: doctors.length * 2,
            ),
          ),
        ],
      ),
    );
  }
}
