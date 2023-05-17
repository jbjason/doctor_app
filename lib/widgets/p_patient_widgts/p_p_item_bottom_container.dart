import 'package:doctor_app/constants/home_const.dart';
import 'package:flutter/material.dart';

class PPItemBottomContainer extends StatelessWidget {
  const PPItemBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // location
        const Expanded(
          child: Text(
            'Purana Paltan,Dhaka Bangladesh',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: homeSecondary, fontSize: 11),
          ),
        ),
        // view medical details button
        Container(
          margin: const EdgeInsets.only(left: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: homeAppBar,
          ),
          child: const Text('View Medical Details',
              style: TextStyle(color: Colors.white, fontSize: 13)),
        ),
      ],
    );
  }
}
