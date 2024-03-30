import 'package:afoflutter/screen/schedulechild/parenask.dart';
import 'package:afoflutter/screen/schedulechild/parendo.dart';
import 'package:afoflutter/screen/schedulechild/planday.dart';
import 'package:afoflutter/screen/schedulechild/planweek.dart';
import 'package:afoflutter/widget/spCart.dart';
import 'package:flutter/material.dart';



class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Lịch Học'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartSchedule(context,const Color(0xFFECECEC), const Planday(), 'images/khday.png', 'Kế hoạch ngày', 'Các hoạt động diễn ra trong ngày hôm nay'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartSchedule(context,const Color(0xFFFFFCE0), const Planweek(), 'images/khweek.png', 'Kế hoạch tuần', 'Các hoạt động diễn ra trong ngày tuần'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartSchedule(context,const Color(0xFFFFE0B2), const ParentDo(), 'images/parentdo.png', 'Parent Do', 'Các việc phụ huynh có thể làm cùng bé'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartSchedule(context,const Color(0xFFFFDEC9), const ParentAsk(), 'images/ask.png', 'Parent ask', 'Các câu hỏi phụ huynh có thể hỏi bé'),
          AddCart.distanceWidgetCollum(30),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddCart.floatingABL(const Color(0xFFFFA007), context),
      bottomNavigationBar: AddCart.bottomNavigatorBar(const Color(0xFF575757), const Color(0xFF575757), const Color(0xFF575757), const Color(0xFF575757), context),
    );
  }
}