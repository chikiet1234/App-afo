import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class Abnormal extends StatefulWidget {
  const Abnormal({super.key});

  @override
  State<Abnormal> createState() => _AbnormalState();
}

class _AbnormalState extends State<Abnormal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Diễn biến bất thường'),
          AddCart.distanceWidgetCollum(30),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(315, examinationForm('29/12/2023 - 11:00 AM', 'Bị sốt', 'Uống thuốc', 'Không chuyển', 'Đã hạ sốt')),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(315, examinationForm('29/01/2023 - 11:00 AM', 'Bị sốt', 'Uống thuốc', 'Không chuyển', 'Đã hạ sốt')),
          AddCart.spaceWidget(),
        ],
      ),
    );
  }
  Padding examinationForm(String khamlan, String bandau, String taitruong, String chuyendi, String chuthich){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(khamlan, style: AddText.textColorH3NoWeight(),textAlign: TextAlign.center,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              infor('Chuẩn đoán ban đầu', bandau),
              AddCart.grais(),
              AddCart.distanceLogo(),
              AddCart.distanceWidgetCollum(15),
              infor('Điều trị tại trường', taitruong),
              AddCart.grais(),
              AddCart.distanceLogo(),
              AddCart.distanceWidgetCollum(15),
              infor('Chuyển đi', chuyendi),
              AddCart.distanceWidgetCollum(15),
              AddCart.grais(),
              AddCart.distanceLogo(),
              infor('Chú Tích', chuthich),
              AddCart.distanceWidgetCollum(15),
            ],
          ),
        ],
      ),
    );
  }
  Column infor(String loai, String thongso){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(loai, style: AddText.textNomaWeight(),),
        Text(thongso, style: AddText.textNomal(),)
      ],
    );
  }
}