import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/models/doctor.dart';
import 'package:flutter/material.dart';

class DocdNavBar extends StatelessWidget {
  const DocdNavBar({super.key, required this.doctor});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return getButtonStyle(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Fee:  \$${doctor.fees}'),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white54,
            ),
            child: const Text(
              'Appointment',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
