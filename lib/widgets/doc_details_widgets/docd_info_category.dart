import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';

class DocDInfoCategory extends StatelessWidget {
  const DocDInfoCategory({super.key, required this.selectedCategory});
  final ValueNotifier<int> selectedCategory;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const aboutList = ['OverView', 'Schedule', 'Reveiws'];
    return ValueListenableBuilder(
      valueListenable: selectedCategory,
      builder: (context, selected, __) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: Colors.white,
            boxShadow: bodyShadow,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                aboutList.length,
                (i) => InkWell(
                  onTap: () => selectedCategory.value = i,
                  child: Container(
                    // removing margin 20 & padding 10 of parent Container
                    width: (size.width - (20 * 2 + 10 * 2)) / 3,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.5),
                      color: selected == i ? homeAppBar : Colors.transparent,
                    ),
                    child: Text(
                      aboutList[i],
                      style: TextStyle(
                        color: selected == i ? Colors.cyan : homeAppBar,
                        fontWeight:
                            selected == i ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
