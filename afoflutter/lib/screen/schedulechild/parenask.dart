import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spbutton.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class ParentAsk extends StatefulWidget {
  const ParentAsk({super.key});

  @override
  State<ParentAsk> createState() => _ParentAskState();
}
List<String> week =['Tuần 1', 'Tuần 2','Tuần 3','Tuần 4','Tuần 5'];
List<String> year =['2013 - 2014', '2014 - 2015','2015 - 2016','2016 - 2017','2017 - 2018'];
class _ParentAskState extends State<ParentAsk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Parent Ask'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartViewItem(140, loc()),
          AddCart.spaceWidget(),
          Text('Làm việc nhà', style: AddText.textColorH2(),textAlign: TextAlign.center,),
          AddCart.distanceLogo(),
          Text('Lau nhà', style: AddText.h3(),textAlign: TextAlign.center,),
          AddCart.spaceWidget(),
          padingW(ynghia()),
          AddCart.spaceWidget(),
          Text('Những điều phụ huynh hỏi bé', style: AddText.textColorH2(),textAlign: TextAlign.center,),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(90, padingW(lam('Thứ 2:','Khi nào chúng ta cần quét nhà','Khi nào chúng ta lâu nha'))),
          AddCart.distanceWidgetCollum(15),
          AddCart.cartViewItem(90,  padingW(lam('Thứ 3:','Tại sao chúng ta phải quét nhà','Lau nhà có lợi ích gì cho ta'))),
          AddCart.distanceWidgetCollum(30)
        ],
      ),
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
  Padding padingW (Widget widget){
    return Padding(padding: const EdgeInsets.only(left: 10, right: 10), child: widget,);
  }
  Container ynghia(){
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
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
      child: Column(
        children: [
          Text('Ý nghĩa', style: AddText.textColorH3(),textAlign: TextAlign.center,),
          Text('Các bố mẹ rất thích khi nhìn còn mình quét rác hay lau dọn, nhưng những bộ dụng cụ của người lớn đều có kích thước khá to gây khó khăn cho bé. Đây là một bộ chổi, cây lau, hốt rác được thiết kế dạng mini để bé dễ cầm nắm và lao động vừa sức. Bé sẽ học và rèn luyện được tính tự giác và có ý thức hơn trong việc vệ sinh nhà cửa. Tập tính kiên trì và tập trung, kiểm tra xem mình quét hay lau có sạch chưa. Đối với các bé quá nhỏ thì bố mẹ có thể phụ giúp như khi thấm nước giẻ lau, sau đó giặt sạch lại và đem phơi. Sau khi dùng xong hãy dựng ngay một góc nào đó vừa tầm với của bé để vệ sinh cho lần sau'
            ,style: AddText.h3(),textAlign: TextAlign.justify,
            )
        ],
      ),
    );
  }
  Column lam(String date,String ask1, String ask2){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(date, style: AddText.textNomal(),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ask1, style: AddText.textNomal(),),
              Text(ask2, style: AddText.textNomal(),),
            ],
          ),
        ),
      ],
    );
  }
}