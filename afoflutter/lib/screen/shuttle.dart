import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class Shutlle extends StatefulWidget {
  const Shutlle({super.key});

  @override
  State<Shutlle> createState() => _ShutlleState();
}

class _ShutlleState extends State<Shutlle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Đưa Đón'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartViewItem(300, map()),
          AddCart.distanceWidgetCollum((30)),
          AddCart.cartViewItem(200, infoDriver()),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartViewItem(320, table()),
          AddCart.distanceWidgetCollum((30))
        ],
      ),
    );
  }
  Column map(){
    return Column(
      children: [
        AddCart.spaceWidget(),
        Text('Theo dõi bản đồ', style: AddText.h2Bold(),),
        AddCart.distanceWidgetCollum(15),
        AddImages.imageRadius(236, MediaQuery.of(context).size.width-20, 'images/map.png')
      ],
    );
  }
  Column infoDriver(){
    return Column(
      children: [
        AddCart.distanceLogo(),
        Text('Thông tin tài xế', style: AddText.h2Bold(),),
        AddCart.spaceWidget(),
        Row(
          children: [
            AddCart.distanceWidgetRow(10),
            AddImages.addAvarta('images/drived_04.jpg', 120),
            AddCart.distanceWidgetRow(10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Họ và tên: Nguyễn Văn A', style: TextStyle(color: Color(0xFF575757), fontSize: 16),),
                Text('CMND: 083382248324', style: TextStyle(color: Color(0xFF575757), fontSize: 16),),
                Text('Hạng bằng: C', style: TextStyle(color: Color(0xFF575757), fontSize: 16),),
                Text('Bắt đầu: 20/12/2023', style: TextStyle(color: Color(0xFF575757), fontSize: 16),),
              ],
            )
          ],
        ),       
      ],
    );
  }
  Column table(){
    return Column(
      children: [
        AddCart.distanceLogo(),
        Text('Thông tin chi tiết', style: AddText.h2Bold(),),
        AddCart.spaceWidget(),
        Text('Thời gian xuất phát: 10:00 22/12/2023', style: AddText.h3(),),
        AddCart.spaceWidget(),
        Container(
          color: const Color(0xFFE7E7E7),
          margin: const EdgeInsets.only(right: 5, left: 5),
          child: DataTable(
            border: TableBorder.all(color: Colors.white),
            columns: <DataColumn>[
              DataColumn(
                label: Text('Thời gian', style: AddText.h3(),)         
              ),
              DataColumn(
                label: Text('Tới nhà bé', style: AddText.h3(),)         
              ),
            ], 
            rows: <DataRow>[
              AddCart.tableItem3('10:30', 'Nguyễn Thị C'),
              AddCart.tableItem3('11:00', 'Dương Chí Kiệt'),
              AddCart.tableItem3('11:30', 'Lương Thị Ngọc Chằm')
            ],
          ),
        )
      ],
    );
  }
}