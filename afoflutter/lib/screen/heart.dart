import 'package:afoflutter/screen/abnormal.dart';
import 'package:afoflutter/screen/drugged.dart';
import 'package:afoflutter/screen/indepthexamination.dart';
import 'package:afoflutter/screen/vacxin.dart';
import 'package:afoflutter/widget/spCart.dart';
import 'package:flutter/material.dart';



class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Sức khỏe'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartSchedule(context,const Color(0xFFECECEC), const Examination(), 'images/kham.png', 'Khám chuyên khoa', 'Khám thể lực, nhi khoa, mắt'),
          AddCart.spaceWidget(),
          AddCart.cartSchedule(context,const Color(0xFFFFFCE0), const Abnormal(), 'images/batthuong.png', 'Diễn biến bất thường', 'Diễn biến sức khỏe bất thường ở bé'),
          AddCart.spaceWidget(),
          AddCart.cartSchedule(context,const Color(0xFFFFE0B2), const Drugged(), 'images/uongthuoc.png', 'Đơn thuốc của bé', 'Thuốc bé uống trong ngày'),
          AddCart.spaceWidget(),
          AddCart.cartSchedule(context,const Color(0xFFFFDEC9), const VacXin(), 'images/timchung.png', 'Lịch tiêm vac-xin', 'Nhắc nhỡ lịch tiêm vac-xin của bé'),
          AddCart.distanceWidgetCollum(40),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddCart.floatingABL(const Color(0xFF575757), context),
      bottomNavigationBar: AddCart.bottomNavigatorBar(const Color(0xFF575757), const Color(0xFF575757), const Color(0xFFFFA007), const Color(0xFF575757), context),
    );
  }
}