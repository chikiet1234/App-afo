import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';



class Fee extends StatefulWidget {
  const Fee({super.key});

  @override
  State<Fee> createState() => _FeeState();
}

class _FeeState extends State<Fee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Các loại phí'),
          AddCart.distanceWidgetCollum(30),
          Text('Các loại phí', style: AddText.textColorH2(),textAlign: TextAlign.center,),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(MediaQuery.of(context).size.height - 190, table())
        ],
      ),
    );
  }
  ListView table(){
    return ListView(
      children: [
        DataTable(
          headingRowColor: MaterialStateProperty.all(const Color(0xFFFFD9BF)),
          dataRowColor: MaterialStateProperty.all(Colors.white),
          border: TableBorder.all(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: const BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12))
          ),
          columns: const <DataColumn>[
            DataColumn(label: Text('Tên phí',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
            DataColumn(label: Text('Giá phí',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),))
          ], 
          rows: <DataRow>[
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
            AddCart.tableItem3('Phí dịch vụ đưa đón', '600.000'),
          ]
        )
      ],
    );
  }
}