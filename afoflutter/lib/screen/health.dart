import 'package:afoflutter/screen/menu/menuday.dart';
import 'package:afoflutter/screen/menu/menuweek.dart';
import 'package:afoflutter/widget/spCart.dart';
import 'package:flutter/material.dart';



class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Sức khỏe'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartSchedule(context, const Color(0xFFECECEC), const MenuDay(), 'images/menuday.png', 'Thực đơn hôm nay', 'Danh sách các món phụ vụ hôm nay'),
          AddCart.spaceWidget(),
          AddCart.cartSchedule(context, const Color(0xFFFFFCE0), const MenuWeek(), 'images/menuweek.png', 'Thực đơn tuần', 'Danh sách các món theo các ngày trong tuần')
        ],
      ),
    );
  }
}