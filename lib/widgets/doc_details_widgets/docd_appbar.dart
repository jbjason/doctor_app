import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';

class DocDAppBar extends StatelessWidget {
  const DocDAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ashhLight,
      pinned: true,
      leading: getBackButton(context),
      title: const Text('Dr. Info', style: TextStyle(color: homeAppBar)),
      actions: [
        Row(
          children: [
            const SizedBox(
              height: 8,
              width: 8,
              child: DecoratedBox(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              ),
            ),
            const SizedBox(width: 5),
            getSubTitleText('Active Now', homeAppBar),
          ],
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
