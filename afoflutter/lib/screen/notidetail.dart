import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class NotificationDetail extends StatefulWidget {
  const NotificationDetail({super.key});

  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context,'Thông báo'),
          AddCart.distanceWidgetCollum(30),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Đăng ký dã ngoại', style: AddText.textColorH2(),),
                const Text('27/12/2023 13:12', style: TextStyle(fontSize: 12, color: Color(0xFF838383)),),
              ],
            ),
          ),
          // ignore: unnecessary_const
          const Expanded(child: Divider(color: const Color.fromARGB(255, 183, 183, 183),)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ý nghĩa', style: AddText.textColorH3(),),
                const Text('Học qua môi trường tự nhiên, học qua vui chơi và trải nghiệm dã ngoài mẫm non đã mang đến nguồn năng lượng tích cực cho các bạn nhỏ Sunrise. Mỗi ngày đến trường con đều hào hứng với biết bao điều mới lạ. Con không bị gò bó trong lớp học mà có nhiều cơ hội khám phá thực tế hơn', style: TextStyle(fontSize: 16,),textAlign: TextAlign.justify,),
                const Text('Các bé được đùa nghịch tại khu chơi cát nhỏ mà vui nhộn như ở trên một bãi biển lớn vậy. Bé được tăng khả năng vận động với khu nhà banh, khai phá tư duy sáng tạo cùng không gian lắp ráp Lego. Bên cạnh đó còn rất nhiều trải nghiệm bổ ích nữa. Hoạt động cho bé mầm non dã ngoại tạo điều kiện cho con mở rộng thế giới quan, phát triển cả về tư duy lẫn thể chất. Những điều tiếp thu được từ thực tế giúp con có thêm kiến thức mới và rèn luyện kỹ năng sống hữu ích.', style: TextStyle(fontSize: 16,),textAlign: TextAlign.justify,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}