import 'package:afoflutter/screen/login.dart';
import 'package:afoflutter/screen/notification.dart';
import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          fit: StackFit.loose,
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: AddCart.appbackgroupd(),
              height: 290,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: AddImages.addLogo(
                            'images/logo.png', 35, Colors.white, 16, 0),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationAFO()));
                        },
                        icon: const Icon(Icons.notifications_none_sharp),
                        color: Colors.white,
                      )
                    ],
                  ),
                  AddCart.distanceLogo(),
                  Row(
                    children: [
                      AddImages.addAvarta('images/24MN000010.jpg', 85),
                      const SizedBox(
                        width: 10,
                      ),
                      AddText.appInfo()
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: -200,
                left: 0,
                right: 0,
                child: AddCart.cartViewItem(
                    320,
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          infor('Họ tên', 'Nguyễn Thị C'),
                          infor('Mã', '1323413'),
                          infor('Ngày sinh', '14-12-2018'),
                          infor('Giới tính', 'Nữ'),
                          infor('Dân tộc', 'Kinh'),
                          infor('Địa chỉ', '688 Lê Đức Thọ'),
                          infor('Quốc tích', 'Việt Nam'),
                          infor('Chiều cao', '98'),
                          infor('Cân nặng', '23'),
                        ],
                      ),
                    )))
          ],
        ),
        AddCart.distanceLogo(),
        Padding(
          padding: const EdgeInsets.only(top: 210),
          child: AddCart.cartViewItem(
              210,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thông tin lớp học',
                      style: AddText.textColorH3(),
                    ),
                    infor('Lớp', 'Mầm non 1'),
                    infor('Khối', 'Mầm non'),
                    infor('Năm học', '2023-2024'),
                    infor('Ghi chú', 'Trường mầm non AFO'),
                  ],
                ),
              )),
        ),
        AddCart.spaceWidget(),
        AddCart.cartViewItem(
          325,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Thông tin giáo viên chủ nghiệm',
                  style: AddText.textColorH3(),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 140,
                    decoration: const BoxDecoration(
                      color: Color(0xFFECECEC),
                    ),
                  ),
                  AddImages.addAvarta('images/parent_02.jpg', 120)
                ],
              ),
              infor('Họ và tên', 'Nguyên Thị T'),
              infor('Địa chỉ', 'Lê Đức Thọ, Gò Vấp'),
              infor('SĐT', '0983445643'),
              infor('Email', 'ntt.gv@gmail.com'),
            ],
          ),
        ),
        AddCart.spaceWidget(),
        AddCart.cartViewItem(760, Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                    'Thông tin giáo viên chủ nghiệm',
                    style: AddText.textColorH3(),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0, bottom: 10),
              child: Text('Người giám hộ 1', style: AddText.textNomaWeight(),),
            ),
            inforgroup('Nguyên Văn Tư', 'Lê Đức Thọ, Gò Vấp', '0983445643', 'ntt.ph1@gmail.com', 'Cha', 'images/parent_1.jpg'),
            // AddCart.grais(),
            AddCart.spaceWidget(),
            Padding(
              padding: const EdgeInsets.only(left:10.0, bottom: 10),
              child: Text('Người giám hộ 2', style: AddText.textNomaWeight(),),
            ),
            inforgroup('Nguyên Thị F', 'Lê Đức Thọ, Gò Vấp', '0983445232', 'ntt.ph2@gmail.com', 'Mẹ', 'images/parent_04.jpg'),
          ],
        )),
        AddCart.spaceWidget(),
        AddCart.cartViewItem(450, Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                    'Thông tin người đưa đón',
                    style: AddText.textColorH3(),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0, bottom: 10),
              child: Text('Người đưa đón', style: AddText.textNomaWeight(),),
            ),
            inforgroup('Nguyên Thị E', 'Lê Đức Thọ, Gò Vấp', '0983445453', 'ntt.dd1@gmail.com', 'Dì', 'images/parent_06.jpg'),
            AddCart.distanceLogo(),
            ElevatedButton(onPressed: (){
                       showDialog(context: context, builder: (context)=> SimpleDialog(
                        title: Text('Đổi người đưa đón', style: AddText.textColorH2(),textAlign: TextAlign.center,),
                        contentPadding: const EdgeInsets.all(20),
                        children: [
                          Text('Lý do: ' ,style: AddText
                          .h3() ,),
                          SizedBox( width: MediaQuery.of(context).size.width -50,
                          child: TextFormField(
                            minLines: 3,
                            maxLines: 3,
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
                          AddCart.distanceLogo(),
                          Text('Hình người đón: ' ,style: AddText
                          .h3() ,),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 120,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 231, 231, 231),
                                ),
                              ),
                              AddImages.addAvarta('images/teacher_10.png', 100)
                            ],
                          ),
                          AddCart.distanceLogo(),
                          Text('Họ và tên: ' ,style: AddText
                          .h3() ,),
                          TextFormField(
                            decoration: const InputDecoration(
                              // label: Text('Nhập lý do'),
                              hintText: 'Nhập họ và tên...',
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
                          ),
                          AddCart.distanceLogo(),
                          Text('Số điện thoại: ' ,style: AddText
                          .h3() ,),
                          TextFormField(
                            decoration: const InputDecoration(
                              // label: Text('Nhập lý do'),
                              hintText: 'Nhập sdt...',
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
                          ),
                          AddCart.distanceLogo(),
                          Text('Mối quan hệ: ' ,style: AddText
                          .h3() ,),
                          TextFormField(
                            decoration: const InputDecoration(
                              // label: Text('Nhập lý do'),
                              hintText: 'Nhập mối quan hệ...',
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
                          ),
                          AddCart.spaceWidget(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                              buttonDialog( 'Trở lại', 40, MediaQuery.of(context).size.width /2 -70, const Color.fromARGB(255, 255, 212, 143), Colors.black, 14),
                              buttonDialog( 'Xác nhận', 40,  MediaQuery.of(context).size.width /2 -70,const Color(0xFFFFA007), Colors.white, 14)
                           ],
                          )
                        ],
                      )
                      );
                    },
                  // ignore: sort_child_properties_last
                  child: const Text('Đổi người đón', style:  TextStyle(color: Colors.white, fontSize: 16),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA007),
                    fixedSize: Size(MediaQuery.of(context).size.width - 40, 40),
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  ),  
          ],
        )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(onPressed: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const login()));
              });
            },
          // ignore: sort_child_properties_last
          child:const Text('Đăng xuất', style:  TextStyle(color: Colors.white, fontSize: 16),),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFA007),
            fixedSize: Size(MediaQuery.of(context).size.width-20, 40),
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )
          ),
          ),
        ),
        AddCart.distanceWidgetCollum(30),
      ],
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddCart.floatingABL(const Color(0xFF575757), context),
      bottomNavigationBar: AddCart.bottomNavigatorBar(const Color(0xFF575757), const Color(0xFF575757), const Color(0xFF575757), const Color(0xFFFFA007), context),
    );
  }

  Container infor(String tilte, String content) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Row(
        children: [
          SizedBox(
              width: 100,
              child: Text(
                tilte,
                style: AddText.textNomaWeight(),
              )),
          Container(
            width: MediaQuery.of(context).size.width - 170,
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              content,
              style: AddText.textNomal(),
            ),
          ),
        ],
      ),
    );
  }

  Column inforgroup(
      String name, String agree, String sdt, String email, String qh, String urlimage) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 140,
              decoration: const BoxDecoration(
                color: Color(0xFFECECEC),
              ),
            ),
            AddImages.addAvarta(urlimage, 120)
          ],
        ),
        infor('Họ và tên', name),
        infor('Địa chỉ', agree),
        infor('SĐT', sdt),
        infor('Email', email),
        infor(('Mối quan hệ'), qh)
      ],
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
