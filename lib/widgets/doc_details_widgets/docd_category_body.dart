import 'package:flutter/material.dart';

class DocdCategoryBody extends StatelessWidget {
  const DocdCategoryBody({
    super.key,
    required this.selectedCategory,
    required this.infoItems,
  });

  final ValueNotifier<int> selectedCategory;
  final List<StatelessWidget> infoItems;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedCategory,
      builder: (context, index, _) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(25.0),
        child: infoItems[index],
      ),
    );
  }
}
