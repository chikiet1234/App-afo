import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class ChangeClass extends StatefulWidget {
  const ChangeClass({super.key});

  @override
  State<ChangeClass> createState() => _ChangeClassState();
}

class _ChangeClassState extends State<ChangeClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Chuyển lớp'),
          AddCart.distanceWidgetCollum(30),
          Text('Danh sách lớp', style: AddText.textColorH2(), textAlign: TextAlign.center,),
          padding()
        ],
      ),
    );
  }
  Container padding(){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      // child: GridView.count(
      //       crossAxisCount: 2,
      //       crossAxisSpacing: 2,
      //       childAspectRatio: (1 / .6),
      //       mainAxisSpacing: 2,           
      //       // padding: EdgeInsets.only(top: 10),
      //       children: [
      //         classChange(),
      //         classChange(),
      //         classChange(),
      //         classChange(),
      //         classChange(),
      //         classChange(),
      //         classChange(),
      //         classChange(),
      //         classChange(),
      //         classChange(),
      //       ]
      //     ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            classChange(),
            classChange(),
          ],)
        ],
      ),
    );
  }
  Container classChange(){
    return Container(
      // height: 120,
      width: MediaQuery.of(context).size.width / 2 - 30,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
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
          Text('Lớp mẫu giáo 1', style: AddText.h3(), textAlign: TextAlign.center,),
          Row(
            children: [
              AddImages.cartImages('images/teacher_10.png',70, (MediaQuery.of(context).size.width / 2 - 30) / 2 - 10),
              AddCart.distanceWidgetRow(10),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 2 - 30) / 2 - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cô Nguyễn Thị Nga', style: TextStyle(fontSize: 10, color: Colors.black),textAlign: TextAlign.justify,),
                    AddCart.distanceLogo(),
                    const Text('Số lượng: 20/21', style: TextStyle(fontSize: 10, color: Colors.black),maxLines: 2,),
                    AddCart.distanceLogo(),
                  ],
                ),
              )
            ],
          ),
          AddCart.distanceLogo(),
          ElevatedButton(onPressed: (){
                         showDialog(context: context, builder: (context)=> SimpleDialog(
                          title: Text('Chuyển lớp', style: AddText.textColorH2(),textAlign: TextAlign.center,),
                          contentPadding: const EdgeInsets.all(20),
                          children: [
                            Text('Lý do: ' ,style: AddText
                            .h2Light() ,),
                            SizedBox(height: 180, width: MediaQuery.of(context).size.width -50,
                            child: TextFormField(
                              minLines: 5,
                              maxLines: 5,
                              decoration: const InputDecoration(
                                // label: Text('Nhập lý do'),
                                hintText: 'Nhập lý do',
                                border: OutlineInputBorder(),
                                fillColor: Color.fromARGB(255, 223, 223, 223),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 223, 223, 223),
                                  )
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 223, 223, 223),
                                  )
                                )
                              ),
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                                buttonDialog( 'Trở lại', 40, 130, const Color.fromARGB(255, 255, 212, 143), Colors.black, 14),
                                buttonDialog( 'Xác nhận', 40, 130,const Color(0xFFFFA007), Colors.white, 14)
                             ],
                            )
                          ],
                        )
                        );
                      },
                    // ignore: sort_child_properties_last
                    child: const Text('Đăng ký', style:  TextStyle(color: Colors.white, fontSize: 10),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFA007),
                      fixedSize:  Size(MediaQuery.of(context).size.width / 2 - 40, 30),
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                    ),
        ],
      ),
    );
  }
  ElevatedButton buttonDialog(String name, double height, double width, Color color, Color colorText, double fontSize){
    return ElevatedButton(onPressed: (){
        setState(() {
          Navigator.pop(context);
        });
      },
     // ignore: sort_child_properties_last
     child: Text(name, style:  TextStyle(color: colorText, fontSize: fontSize),),
     style: ElevatedButton.styleFrom(
      backgroundColor: color,
      fixedSize: Size(width, height),
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )
     ),
    );
  }
}