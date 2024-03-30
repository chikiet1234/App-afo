import 'package:afoflutter/widget/spCart.dart';
import 'package:flutter/material.dart';


class MenuDay extends StatefulWidget {
  const MenuDay({super.key});

  @override
  State<MenuDay> createState() => _MenuDayState();
}

class _MenuDayState extends State<MenuDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Thực đơn hôm nay'),
          AddCart.distanceWidgetCollum(30),
          AddCart.menu()
        ],
      ),
    );
  }
}