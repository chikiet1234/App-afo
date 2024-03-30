// ignore: unused_import, avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:afoflutter/screen/changeclass.dart';
import 'package:afoflutter/screen/fee.dart';
import 'package:afoflutter/screen/health.dart';
import 'package:afoflutter/screen/news.dart';
import 'package:afoflutter/screen/notification.dart';
import 'package:afoflutter/screen/opinion.dart';
import 'package:afoflutter/screen/registerservice.dart';
import 'package:afoflutter/screen/shuttle.dart';
import 'package:afoflutter/screen/sukien.dart';
import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spbutton.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [          
          Container(
            padding: const EdgeInsets.all(10),
            decoration: AddCart.appbackgroupd(),
            height: 160,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: AddImages.addLogo('images/logo.png',35, Colors.white,16,0),
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationAFO()));
                    }, icon: const Icon(Icons.notifications_none_sharp),color: Colors.white,)
                  ],
                ),
                AddCart.distanceLogo(),
                Row(
                  children: [                
                    AddImages.addAvarta('images/24MN000010.jpg', 85),
                    const SizedBox(width: 10,),
                    AddText.appInfo()             
                  ],
                ),
              ],
            )
          ),
          const SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AddbuttonandInput.inputFunction('images/bus.png', 'Đưa đón', const Shutlle(), context),
                  AddbuttonandInput.inputFunction('images/sukien.png', 'Lịch sự kiện',const Even(), context),
                  AddbuttonandInput.inputFunction('images/dangky.png', 'Đăng ký',const RegisterService(), context),
                  GestureDetector(
                    onTap: (){
                      showDialog(context: context, builder: (context)=> SimpleDialog(
                        title: Text('Xin nghỉ học', style: AddText.textColorH2(),textAlign: TextAlign.center,),
                        contentPadding: const EdgeInsets.all(20),
                        children: [
                          const Text('Lý do: ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                          AddCart.distanceLogo(),
                          SizedBox(
                            height: 230,
                            width: MediaQuery.of(context).size.width -50,
                            child: Column(
                              children: [
                                TextFormField(
                                  minLines: 5,
                                  maxLines: 5,
                                  decoration:const InputDecoration(
                                    hintText: 'Nhập lý do...',
                                    border: OutlineInputBorder(),
                                    fillColor: Color.fromARGB(255, 223, 223, 223),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                       borderSide: BorderSide(
                                        color: Color.fromARGB(255, 223, 223, 223),
                                      )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(255, 223, 223, 223),
                                      )
                                    )
                                  ),
                                ),
                                AddCart.spaceWidget(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                      buttonDialog( 'Trở lại', 40, 130, const Color.fromARGB(255, 255, 212, 143), Colors.black, 14),
                                      buttonDialog( 'Xác nhận', 40, 130,const Color(0xFFFFA007), Colors.white, 14)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            image:const DecorationImage(image: AssetImage('images/nghihoc.png'), fit: BoxFit.cover),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(0, 3)
                              )
                            ],
                            borderRadius: const BorderRadius.all(Radius.circular(8))
                          )
                        ),
                        const SizedBox(height: 8,),
                        const Text('Nghỉ học', style: TextStyle(fontSize: 16, color: Colors.black),)
                      ]),
                  )
                ],
               ),
               AddCart.spaceWidget(),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AddbuttonandInput.inputFunction('images/chat.png', 'Trao đổi',const Opinion(), context),
                  AddbuttonandInput.inputFunction('images/fee.png', 'Các Loại phí',const Fee(), context),
                  AddbuttonandInput.inputFunction('images/chamsoc.png', 'Thực đơn',const Health(), context),
                  AddbuttonandInput.inputFunction('images/chuyenlop.png', 'Chuyển lớp',const ChangeClass(), context),
                ],
               ),
               const SizedBox(height: 30,),
               Container(
                alignment: Alignment.center,
                child: Text('Album nổi bật của bé', style: AddText.h2Light(),),
               ),
               AddImages.listViewAlbum(context),
               const SizedBox(height: 30,),
               Row(
                children: [
                  const Text('Tin tức' , style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){

                    },
                    child: GestureDetector(child: Text('Xem thêm', style: TextStyle(color: Colors.red[400],),textAlign: TextAlign.right,),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Newsnew()));
                      },
                    ),  
                  ),
                ]       
               ),
               AddCart.distanceWidgetCollum(15),
               Row(
                children: [
                  AddImages.newsPaper('images/top10thucpham.png', 'Top 10 thực phẩm tăng cường phát triển trí não cho bé yêu', context),
                  AddCart.distanceWidgetRow(10),
                  AddImages.newsPaper('images/theduc.jpg', 'Các bài tập thể dục tốt cho tâm trạng trẻ em', context)
                ],
               ),
               AddCart.distanceWidgetCollum(15),
               Row(
                children: [
                  AddImages.newsPaper('images/yogatre.png', 'Các bài tập yoga tăng chiều cao cho trẻ em', context),
                  AddCart.distanceWidgetRow(10),
                  AddImages.newsPaper('images/phuhuynhnen.png', 'Những cách cha mẹ nên thử nếu khó kìm chế cảm xúc khi dạy con', context)
                ],
               ),
                AddCart.distanceWidgetCollum(30),
            ],),
          )
        ],     
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddCart.floatingABL(const Color(0xFF575757), context),
      bottomNavigationBar: AddCart.bottomNavigatorBar(const Color(0xFFFFA007), const Color(0xFF575757), const Color(0xFF575757), const Color(0xFF575757), context),
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