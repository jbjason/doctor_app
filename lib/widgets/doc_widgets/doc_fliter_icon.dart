import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/material.dart';

class DocFilterIcon extends StatelessWidget {
  const DocFilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await filterBottomSheetWidget(context);
      },
      icon: const Icon(Icons.filter_list_outlined, color: homeAppBar),
    );
  }

  filterBottomSheetWidget(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) => getFilterOption(),
    );
  }

  getFilterOption() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Filters',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: homeTextColor,
                    fontFamily: 'poppins_semibold',
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text('data1'),
            const SizedBox(height: 20),
            const Text('data22'),
            const SizedBox(height: 20),
            const Text('data333'),
            const SizedBox(height: 20),
            const Text('data4444'),
            const SizedBox(height: 25),
            getButtonStyle(
              const Center(
                child: Text(
                  'Apply',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                    color: homeTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
