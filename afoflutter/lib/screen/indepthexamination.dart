import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';



class Examination extends StatefulWidget {
  const Examination({super.key});

  @override
  State<Examination> createState() => _ExaminationState();
}

class _ExaminationState extends State<Examination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Sức khỏe'),
          AddCart.distanceWidgetCollum(30),
          Text('Nhi khoa', style: AddText.textColorH2(),textAlign: TextAlign.center,),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(240, examinationForm('Khám lần 1', '29/12/2023', '98cm', '17kg', '17', '10/10', 'Bình thường')),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(240, examinationForm('Khám lần 2', '29/01/2024', '108cm', '21kg', '19', '10/10', 'Bình thường')),

        ],
      ),
    );
  }
  Padding examinationForm(String khamlan, String date, String cao, String nang, String bmi, String eye, String tinhtrang){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(khamlan, style: AddText.textColorH3NoWeight(),textAlign: TextAlign.center,),
          Text(date, style:const TextStyle(color: Color(0xFF808080)),textAlign: TextAlign.center,),
          AddCart.distanceWidgetCollum(15),
          inforexamination('Chiều cao', cao),
          AddCart.distanceLogo(),
          AddCart.grais(),
          AddCart.distanceLogo(),
          inforexamination('Cân nặng', nang),
          AddCart.distanceLogo(),
          AddCart.grais(),
          AddCart.distanceLogo(),
          inforexamination('BMI', bmi),
          AddCart.distanceLogo(),
          AddCart.grais(),
          AddCart.distanceLogo(),
          inforexamination('Mắt', eye),
          AddCart.distanceLogo(),
          AddCart.grais(),
          AddCart.distanceLogo(),
          inforexamination('Tình trạng dinh dượng', tinhtrang ),
          AddCart.distanceLogo(),
        ],
      ),
    );
  }
  Row inforexamination(String loai, String chiso){
    return Row(
      children: [
        Text(loai,style: const TextStyle(color: Color(0xFF575757), fontWeight: FontWeight.w600),),
        const Spacer(),
        Text(chiso,style: const TextStyle(color: Color(0xFF575757), ),),
      ],
    );
  }
}