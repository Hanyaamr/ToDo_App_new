import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../app_theme/app_colors.dart';

class TaskListTab extends StatefulWidget {
  static const String routeName = 'daily_tasks';

  @override
  State<TaskListTab> createState() => _DailyTasksState();
}

class _DailyTasksState extends State<TaskListTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .15),
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width,
              color: AppColors.PrimaryColor,
            ),
            EasyDateTimeLine(
              timeLineProps:
                  EasyTimeLineProps(vPadding: 10, separatorPadding: 12),
              initialDate: DateTime.now(),
              dayProps: const EasyDayProps(
                dayStructure: DayStructure.dayStrDayNum,
                activeDayStyle: DayStyle(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(142, 72, 72, 72),
                        spreadRadius: 2,
                        blurRadius: 4,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.orangeAccent,
                  ),
                ),
                inactiveDayStyle: DayStyle(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              activeColor: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
