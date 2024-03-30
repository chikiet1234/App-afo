import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class Planday extends StatefulWidget {
  const Planday({super.key});

  @override
  State<Planday> createState() => _PlandayState();
}

class _PlandayState extends State<Planday> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AddCart.appBar(context, 'Kế Hoạch Ngày'),
        AddCart.distanceWidgetCollum(30),
        AddCart.cartViewItem(MediaQuery.of(context).size.height - 120, table())
      ],
    );
  }
  ListView table(){
    return ListView(
      children: [
        DataTable(
          headingRowColor: MaterialStateProperty.all(const Color(0xFFFFD9BF)),
          dataRowColor: MaterialStateProperty.all(Colors.white),
          border: TableBorder.all(
            color: Colors.white,
            borderRadius: const BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12))
          ),
          columns: <DataColumn>[
            DataColumn(label: SizedBox(width: 90, child: Text('Thời gian', style: AddText.textNomal(),))),
            DataColumn(label: Text('Hoạt động', style: AddText.textNomal(),))
          ],
          rows:<DataRow>[
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
            AddCart.tableItem3('7:00 - 7:30', 'Trò chơi: Rồng rắn lên mây'),
          ]
        )
      ],
    );
  }
}