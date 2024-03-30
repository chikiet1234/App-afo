import 'package:afoflutter/screen/notidetail.dart';
import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:flutter/material.dart';


class NotificationAFO extends StatefulWidget {
  const NotificationAFO({super.key});

  @override
  State<NotificationAFO> createState() => _NotificationAFOState();
}

class _NotificationAFOState extends State<NotificationAFO> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Thông báo'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartViewItem(160, noti('Đăng ký dã ngoại','Đơn xin phép cho bé Nguyễn Thị C đi dã ngoại đã được phê duyệt')),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(160, noti('Duyệt đơn xin nghỉ','Đơn xin phép cho bé Nguyễn Thị C vắng mặt ngày hôm nay đã được phê duyệt')),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(160, noti('Duyệt đơn xin nghỉ','Đơn xin phép cho bé Nguyễn Thị C vắng mặt ngày hôm nay đã được phê duyệt')),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(160, noti('Duyệt đơn xin nghỉ','Đơn xin phép cho bé Nguyễn Thị C vắng mặt ngày hôm nay đã được phê duyệt')),
          AddCart.spaceWidget(),
          AddCart.cartViewItem(160, noti('Duyệt đơn xin nghỉ','Đơn xin phép cho bé Nguyễn Thị C vắng mặt ngày hôm nay đã được phê duyệt')),
          AddCart.spaceWidget(),
        ],
      ),
    );
  }
  GestureDetector noti(String noti, String detail){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationDetail()));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AddImages.addLogo('images/logo2.png', 45,const Color(0xFFFFA007),20, 10),
                const Spacer(),
                const Text('27/12/2023 13:12', style: TextStyle(fontSize: 12, color: Color(0xFF838383)),)
              ]
            ),
            AddCart.distanceLogo(),
            AddCart.grais(),
            AddCart.distanceWidgetCollum(12),
            Text(noti, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            Text(detail, style:const TextStyle(fontSize: 16),),
      
      
          ],
        ),
      ),
    );
  }
}