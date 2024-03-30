import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';



class Drugged extends StatefulWidget {
  const Drugged({super.key});

  @override
  State<Drugged> createState() => _DruggedState();
}

class _DruggedState extends State<Drugged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Khám chuyên khoa'),
          AddCart.distanceWidgetCollum(30),
          Text('Số thuốc phát', style: AddText.textColorH2(),textAlign: TextAlign.center,),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(160, examinationForm('29/12/2023 - 11:00 AM', '2', 'Uống sau ăn  cơm')),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(160, examinationForm('29/12/2023 - 11:00 AM', '2', 'Uống sau ăn  cơm')),
        ],
      ),
    );
  }
  Padding examinationForm(String date, String lieu, String chuthich ){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(date, style: AddText.textColorH3NoWeight(),textAlign: TextAlign.center,),
          AddCart.distanceWidgetCollum(15),
          inforexamination('Ritalin' + '(' + lieu +' liều)', chuthich),
          AddCart.distanceLogo(),
          AddCart.grais(),
          AddCart.distanceLogo(),
          inforexamination('Ritalin' + '(' + lieu +' liều)', chuthich),
          AddCart.distanceLogo(),
          AddCart.grais(),
          AddCart.distanceLogo(),
          inforexamination('Ritalin' + '(' + lieu +' liều)', chuthich),
          AddCart.distanceLogo(),
        ],
      ),
    );
  }
  Row inforexamination(String lieu, String ghichu){
    return Row(
      children: [
        Text(lieu,style: const TextStyle(color: Color(0xFF575757), fontWeight: FontWeight.w600),),
        const Spacer(),
        Text(ghichu,style: const TextStyle(color: Color(0xFF575757), ),),
      ],
    );
  }
}