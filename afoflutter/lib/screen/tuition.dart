import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spbutton.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class Tuition extends StatefulWidget {
  const Tuition({super.key});

  @override
  State<Tuition> createState() => _TuitionState();
}

class _TuitionState extends State<Tuition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Học phí'),
          AddCart.distanceWidgetCollum(30),
          Text('Học phí năm học 2023-2024', style: AddText.textColorH2(),textAlign: TextAlign.center,),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(170, padding(profile())),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(200, padding(tuitionDetail())),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(180, padding(inforTranfer())),
          AddCart.spaceWidget(),
          padding(note()),
          AddCart.distanceWidgetCollum(35),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddCart.floatingABL(const Color(0xFF575757), context),
      bottomNavigationBar: AddCart.bottomNavigatorBar(const Color(0xFF575757), const Color(0xFFFFA007), const Color(0xFF575757), const Color(0xFF575757), context),
    );
  }
  Padding padding(Widget widget){
    return Padding(padding: const EdgeInsets.all(10), child: widget,);
  }
  Column profile(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text('Thông tin', style: AddText.textColorH3())),
        AddCart.distanceLogo(),
        Text('Họ và tên: NGuyễn Thị C', style: AddText.textNomal(),),
        Text('Lớp: Mẫu giáo 2', style: AddText.textNomal(),),
        Text('Học phí: 3.577.777', style: AddText.textNomal(),),
        Text('Còn lại: 0', style: AddText.textNomal(),),
        Text('Dư thu: 0', style: AddText.textNomal(),),
      ],
    );
  }
  Column tuitionDetail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text('Chi tiết', style: AddText.textColorH3())),
        AddCart.distanceLogo(),
        Text('Học phí: 2.443.234', style: AddText.textNomal(),),
        Text('Bữa ăn: 234.245', style: AddText.textNomal(),),
        Text('Dã ngoại: 443.446', style: AddText.textNomal(),),
        Text('Đưa đón: 500.000', style: AddText.textNomal(),),
        AddCart.distanceLogo(),
        AddbuttonandInput.buttonWeek('Đã đóng', 40, MediaQuery.of(context).size.width - 40,const Color(0xFFFFA007), Colors.white, 16)   
      ],
    );
  }
  Column inforTranfer(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text('Thông tin chuyển khoản', style: AddText.textColorH3())),
        AddCart.distanceLogo(),
        Text('Tên TK: Trường mần non FourKid STK 0965778424 Tại Ngân hàng TMCP Công Thương Việt Nam (ViettinBank)', style: AddText.textNomal(),textAlign: TextAlign.justify,),
        Text('Nội dung: Nộp học phí tháng 5 năm học 2024STT/Nguyễn Thị C/Mẫu giáo 2', style: AddText.textNomal(),textAlign: TextAlign.justify,),
      ],
    );
  }
  Container note(){
    return Container(
      padding: const EdgeInsets.all(10),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text('Ghi chú', style: AddText.textColorH3())),
          AddCart.distanceLogo(),
          Text('Sau khi sinh viên chuyển tiền học phí vào tài khoản ngân hàng của Nhà trường, trong vòng 5-7 ngày, sinh viên đăng nhập vào tài khoản email của mình để nhận hóa đơn điện tử từ Phòng Kế hoạch – Tài chính. Nếu qua thời gian trên mà sinh viên chưa nhận được hóa đơn điện tử qua email thì sinh viên phải liên hệ ngay với Phòng KH-TC để kiểm tra, đối chiếu.', style: AddText.textNomal(),textAlign: TextAlign.justify,),
          Text('Thời gian kiểm tra, đối chiếu trong vòng 10 ngày kể từ ngày sinh viên đóng học phí. Nhà trường sẽ không giải quyết cho sinh viên trong trường hợp sinh viên chuyển thiếu hoặc sai thông tin nhưng sinh viên không liên hệ với Phòng Kế hoạch – Tài chính trong thời gian quy định như trên.', style: AddText.textNomal(),textAlign: TextAlign.justify,),
        ],
      ),
    );
  }
}