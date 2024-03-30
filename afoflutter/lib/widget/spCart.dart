// ignore: unused_import, avoid_web_libraries_in_flutter
import 'dart:js';

import 'package:afoflutter/screen/heart.dart';
import 'package:afoflutter/screen/home.dart';
import 'package:afoflutter/screen/profile.dart';
import 'package:afoflutter/screen/schedule.dart';
import 'package:afoflutter/screen/tuition.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';



class AddCart{
  static Widget cartView(BuildContext context, Widget widget){
    return Container(
      padding: const EdgeInsets.all(15),
      // margin: const EdgeInsets.all(8),
      // ignore: sort_child_properties_last
      child: widget,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3)
          )
        ]
      ),
    );
  }
  static Widget widgetNull(Widget widget, BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        // ignore: sort_child_properties_last
        child:  widget,
        decoration: const BoxDecoration(color: Colors.white),
    );
  }
  static Widget spaceWidget(){
    return const SizedBox(
      height: 20,
    );
  }
  static Widget distanceWidgetCollum(double distance){
    return  SizedBox(
      height: distance,
    );
  }
  static Widget distanceWidgetRow(double distance){
    return  SizedBox(
      width: distance,
    );
  }
  static Widget distanceLogo(){
    return const SizedBox(
      height: 5,
    );
  }
  static BoxDecoration appbackgroupd(){
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xffFFA007),
          Color(0xFFFCB94E),
          Color.fromARGB(255, 255, 230, 189)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
    );
  }
  static Widget bottomNavigatorBar(Color home, Color fee, Color health, Color account, BuildContext context){
    return BottomAppBar(
      height: 60,
      color: Colors.white70,
      notchMargin: 9.0,
      shape: const CircularNotchedRectangle(),
      shadowColor: Colors.grey.withOpacity(0.5) ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
          }, 
          icon: const Icon(Icons.home), color: home,),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Tuition()));
          }, 
          icon: const Icon(Icons.monetization_on), color:fee,),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Heart()));
          }, 
          icon: const Icon(Icons.health_and_safety_outlined), color: health,),
          IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
          }, 
          icon: const Icon(Icons.account_circle), color: account,)
        ],
      ),
    );
  }
  static Widget floatingABL(Color book, BuildContext context){
    return FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Schedule()));
      },
      shape: const CircleBorder(),
      child:  Icon(Icons.book, color: book,)
    );
  }
  static Widget appBar(BuildContext context, String title){
    return Container(
      height: 70,
      decoration: AddCart.appbackgroupd(),
        child: Row(
          children: [
            AddImages.iconBack(context),
            Expanded(
              child: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.center,)
            )
          ],
       ),
    );
  }
  static Widget cartViewItem(double height, Widget widget){
    return Container(
      height: height,
      margin: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3)
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: widget,
    );
  }
  static DataRow tableItem3(String data1, String data2){
    return DataRow(
          cells: <DataCell>[
            DataCell(Text(data1, style: AddText.h3(),)),
            DataCell(Text(data2, style: AddText.h3(),)),
          ]
        );
  }
  static Widget cartSchedule(BuildContext context,Color color, Widget tab,String url, String function, String detailFt){
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> tab));
      },
      child: cartViewItem(140, Row(
        children: [
          Container(
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            ),
            child: Image(image: AssetImage(url),height: 140, fit: BoxFit.cover,),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            width: MediaQuery.of(context).size.width -170,
            height: 140,
            color: color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(function, style: AddText.h2Bold(),),
                Text(detailFt, style: AddText.textNomal(),maxLines: 2,)
              ],
            )
          )
        ],
      )),
    );
  }
  static DropdownButton dropDB(List<String> list, Color color, Color colordrop){
    return DropdownButton(
      items: list.map((String value){
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value)
        );
      }).toList(), 
      onChanged: (newValue){

      }
    );
  }
  String? selecValue;
  static Widget locYearMonth(List<String> list,Color color, Color colordrop, double radius){
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(radius))
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: DropdownButton<String>(
              // value: selecValue,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              dropdownColor: colordrop,
              items: list.map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value)
                );
              }).toList(), 
              onChanged: (String? value){
                
              }
           )
          ),
        )
      ],
    );
  }
  static Widget grais(){
    return Row(
      children: List.generate(150~/1, (index) => Expanded(
      child: Container(
        color: index%2==0?Colors.transparent
        :const Color(0xFFABABAB),
        height: 2,
      ),
      )),
    );
  }
  static Widget menu(){
    return cartViewItem(500, Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ăn sáng công uống sữa', style:AddText.textColorH3(),),
          distanceLogo(),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Mì nấu hải sản', style: TextStyle(fontSize: 14),),),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Sửa cô gái hà lan', style: TextStyle(fontSize: 14),),),
          distanceLogo(),
          grais(),
          distanceLogo(),
          Text('Ăn giữa buổi', style:AddText.textColorH3(),),
          distanceLogo(),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Yaourt', style: TextStyle(fontSize: 14),),),
          distanceLogo(),
          grais(),
          distanceLogo(),
          Text('Ăn trưa', style:AddText.textColorH3(),),
          distanceLogo(),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Canh chua tôm', style: TextStyle(fontSize: 14),),),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Cơm', style: TextStyle(fontSize: 14),),),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Cà ri gà', style: TextStyle(fontSize: 14),),),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Rau xào', style: TextStyle(fontSize: 14),),),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Chuối chín', style: TextStyle(fontSize: 14),),),
          distanceLogo(),
          grais(),
          distanceLogo(),
          Text('Uống nước mát', style:AddText.textColorH3(),),
          distanceLogo(),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Nước lọc', style: TextStyle(fontSize: 14),),),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Sinh tố đu đủ', style: TextStyle(fontSize: 14),),),
          distanceLogo(),
          grais(),
          distanceLogo(),
          Text('Ăn xế + uống sửa', style:AddText.textColorH3(),),
          distanceLogo(),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Bánh mochi', style: TextStyle(fontSize: 14),),),
          const Padding(padding: EdgeInsets.only(left: 10), child:  Text('Sửa cô gái hà lan', style: TextStyle(fontSize: 14),),),
        ],
      ),
    ));
  }
}

