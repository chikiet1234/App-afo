import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spbutton.dart';
import 'package:flutter/material.dart';


class MenuWeek extends StatefulWidget {
  const MenuWeek({super.key});

  @override
  State<MenuWeek> createState() => _MenuWeekState();
}

class _MenuWeekState extends State<MenuWeek> {
  List<String> week =['Tuần 1', 'Tuần 2','Tuần 3','Tuần 4','Tuần 5'];
  List<String> year =['2013 - 2014', '2014 - 2015','2015 - 2016','2016 - 2017','2017 - 2018'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: Container(
        child: Column(
          children:[
            AddCart.appBar(context,'Kế hoạch tuần'),
            AddCart.distanceWidgetCollum(30),
            AddCart.cartViewItem(150,loc()),
            AddCart.distanceWidgetCollum(30),
            AddCart.cartViewItem(MediaQuery.of(context).size.height - 300, table())
          ],
        )
      )
    );
    
  }
  Widget loc(){
    return Container(
      padding: const EdgeInsets.all(10),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              dropDButtonyear(year, const Color(0xFFFFFFFF), const Color(0xFFFFFFFF), 12, 140,'2012-2013'),
              const Spacer(),
              dropDButton(week, const Color(0xFFFFA007), const Color(0xFFFFA007), 12,100,'Tuần 1'),
            ],
          ),
          AddCart.spaceWidget(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AddbuttonandInput.buttonWeek('Thứ 2', 40, 110, const Color(0xFFFFA007), Colors.white,18) ,
                AddCart.distanceWidgetRow(10),
                AddbuttonandInput.buttonWeek('Thứ 3', 40, 110, const Color(0xFFE3E3E3), Colors.black,18) ,
                AddCart.distanceWidgetRow(10),
                AddbuttonandInput.buttonWeek('Thứ 4', 40, 110, const Color(0xFFE3E3E3), Colors.black,18) ,
                AddCart.distanceWidgetRow(10),
                AddbuttonandInput.buttonWeek('Thứ 5', 40, 110, const Color(0xFFE3E3E3), Colors.black,18) ,
                AddCart.distanceWidgetRow(10),
                AddbuttonandInput.buttonWeek('Thứ 6', 40, 110, const Color(0xFFE3E3E3), Colors.black,18) ,
                AddCart.distanceWidgetRow(10),
              ],
          ),
          )
        ],
      )
    );
  }
  String? selecValue, selecValueyear;
  Container dropDButton(List<String> list,Color color, Color colordrop, double radius, double width, String hint){
    return  Container(
      width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 3)
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: DropdownButton<String>(
              value: selecValue,
              hint: Text(hint,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),),
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white,),
              iconSize: 20,
              borderRadius:  BorderRadius.all(Radius.circular(radius)),
              dropdownColor: colordrop,
              isExpanded: true,
              items: list.map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: SizedBox(child: Text(value,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),))
                );
              }).toList(), 
              onChanged: (String? value){
                setState(() {
                  selecValue = value;
                });
              }
           )
          ),
        );
  }
  Container dropDButtonyear(List<String> list,Color color, Color colordrop, double radius, double width, String hint){
    return  Container(
      width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 3)
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: DropdownButton<String>(
              value: selecValueyear,
              hint: Text(hint,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600,),),
              borderRadius:  BorderRadius.all(Radius.circular(radius)),
              dropdownColor: colordrop,
              isExpanded: true,
              items: list.map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: SizedBox(child: Text(value,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600,),),)
                );
              }).toList(), 
              onChanged: (String? value){
                setState(() {
                  selecValueyear = value;
                });
              }
           )
          ),
        );
  }
  ListView table(){
    return ListView(
      children: [
        AddCart.menu()
      ]
    );
  }
}