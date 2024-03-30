import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';



class VacXin extends StatefulWidget {
  const VacXin({super.key});

  @override
  State<VacXin> createState() => _VacXinState();
}

class _VacXinState extends State<VacXin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Lịch tiêm Vac-Xin'),
          AddCart.distanceWidgetCollum(30),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(145, examinationForm('Lịch tiêm lần 1', '29/12/2023', 'VARIVAR', 'Phòng thủy đậu')),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(145, examinationForm('Lịch tiêm lần 2', '29/01/2024', 'VARIVAR', 'Phòng thủy đậu')),
        ],
      ),
    );
  }
  Padding examinationForm(String khamlan, String date, String vacxinchung, String tacdung){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(khamlan, style: AddText.textColorH3NoWeight(),textAlign: TextAlign.center,),
          Text(date, style:const TextStyle(color: Color(0xFF808080)),textAlign: TextAlign.center,),
          AddCart.distanceWidgetCollum(15),
          inforexamination('Chủng vac-xin', vacxinchung),
          AddCart.distanceLogo(),
          AddCart.grais(),
          AddCart.distanceLogo(),
          inforexamination('Tác Dụng', tacdung),
          AddCart.distanceLogo(),
        ],
      ),
    );
  }
  Row inforexamination(String chung, String tacdung){
    return Row(
      children: [
        Text(chung,style: const TextStyle(color: Color(0xFF575757), fontWeight: FontWeight.w600),),
        const Spacer(),
        Text(tacdung,style: const TextStyle(color: Color(0xFF575757), ),),
      ],
    );
  }
}