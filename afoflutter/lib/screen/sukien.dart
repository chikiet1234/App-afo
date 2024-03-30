import 'dart:js_util';

import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';



class Even extends StatefulWidget {
  const Even({super.key});

  @override
  State<Even> createState() => _EvenState();
}

class _EvenState extends State<Even> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Lịch sự kiện'),
          AddCart.distanceWidgetCollum(30),
          AddCart.distanceLogo(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lịch sự kiện năm học 2023-2024 Hệ thống trường mầm non FourKid', style: AddText.textColorH2(),textAlign: TextAlign.center,),
                AddImages.cartImages('images/even.png', MediaQuery.of(context).size.width + 190, MediaQuery.of(context).size.width),
                AddCart.spaceWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    note(const Color(0xFFC5E0B3), 'Dã ngoại'),
                    note(const Color(0xFFBDD6EE), 'Ngày lễ'),
                    note(const Color(0xFFFFC000), 'Ngày nghỉ'),
                  ],
                ),
                AddCart.distanceLogo(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    note(const Color(0xFFD9D9D9), 'Khám sức khỏe'),
                    note(const Color(0xFFF7CAAC), 'Phụ huynh tham gia cùng với bé'),
                  ],
                ),
                AddCart.spaceWidget(),
                const Text('Ghi chú', style: TextStyle(color: Color(0xFFFFA007),fontSize: 16),),
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Thời gian nghĩ lể, nghỉ tết sẽ phụ thuộc vào Kế hoạch năm của Sở Giáo Dục và Đào tạo'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Thời gian dã ngoại, họp phụ huynh là thời giao dữ kiến. Nhà trường sẽ thông báo cụ thể đến Quý phụ huynh thời gian và địa điểm cụ thể'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Row note(Color color, String detail){
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
        ),
        AddCart.distanceWidgetRow(5),
        Text(detail, style: const TextStyle(fontSize: 14),)
      ],
    );
  }
}