import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';

class DocDInfoItem2 extends StatelessWidget {
  const DocDInfoItem2(
      {required this.selectedDate, required this.selectedSlot, super.key});
  final ValueNotifier<DateTime> selectedDate;
  final ValueNotifier<int> selectedSlot;

  @override
  Widget build(BuildContext context) {
    final morningList = ['10:10am', '10:30am', '10:50am', '11:20am', '11:40am'];
    final afterNoonList = ['2:00pm', '2:20pm', '2:40pm'];
    final eveningList = ['7:00pm', '7:30pm', '8:00pm', '8:30pm', '9:00pm'];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ValueListenableBuilder(
              valueListenable: selectedDate,
              builder: (context, _, __) => CalendarTimeline(
                initialDate: selectedDate.value,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 60)),
                onDateSelected: (date) => selectedDate.value = date,
                monthColor: Colors.grey,
                dayColor: Colors.grey,
                activeDayColor: Colors.white,
                dayNameColor: Colors.grey,
                activeBackgroundDayColor: homeAppBar,
                dotsColor: Colors.white,
                locale: 'en',
              ),
            ),
            const SizedBox(height: 25),
            _getSlotTitleAndList('Morning Slots', morningList),
            const SizedBox(height: 25),
            _getSlotTitleAndList('AfterNoon Slots', afterNoonList),
            const SizedBox(height: 25),
            _getSlotTitleAndList('Evening Slots', eveningList),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _getSlotTitleAndList(String title, List<String> slotList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getTitleText(title, homeAppBar),
        Wrap(
          children: List.generate(
            slotList.length,
            (index) => ValueListenableBuilder(
              valueListenable: selectedSlot,
              builder: (context, currentSlot, _) {
                bool slot =
                    title.contains('Morning Slots') && currentSlot == index;
                return InkWell(
                  onTap: () => selectedSlot.value = index,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    margin: const EdgeInsets.only(
                        left: 10, right: 5, top: 10, bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient:
                          slot ? getHomeGradient(homeAppBar) : bodyGradient,
                      boxShadow: bodyShadow,
                    ),
                    child: Text(
                      slotList[index],
                      style: TextStyle(
                        color: slot ? Colors.white : homeAppBar,
                        fontWeight: slot ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
