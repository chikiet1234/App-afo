import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';





class NewsDetail extends StatefulWidget {
  const NewsDetail({super.key});

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context,'Tin tức'),
          AddCart.distanceWidgetCollum(30),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Các bài tập yoga tăng chiều cao cho trẻ', style: AddText.textColorH2(),),
                const Text('27/12/2023 13:12', style: TextStyle(fontSize: 12, color: Color(0xFF838383)),),
                nodung('Tập yoga có tăng chiều cao không? Yoga được xem là một loại hình tập luyện từ cổ xưa, có nguồn gốc từ Ấn Độ từ khoảng hơn 5000 năm trước. Trong đó, một số bài tập từ yoga có khả năng cải thiện chiều cao khá hiệu quả cho cả trẻ em và người trưởng thành')
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
                Text('Các bài tập yoga tăng chiều cao hiệu quả tốt nhất', style: AddText.textColorH3(),),
                const Text('1. Tư thế chào mặt trời giúp phát triển chiều cao', style: TextStyle(color: Color(0xFFFFA007), fontSize: 16)),
                nodung('Do tư thế này thường được tập vào buổi sáng sớm nên được gọi là tư thế chào mặt trời. Đây là bài tập yoga tăng chiều cao cơ bản giúp mang lại nhiều tác dụng cho sức khỏe như cải thiện tuần hoàn máu, tăng sự dẻo dai và sức bền cho cơ thể, tăng cường sức đề kháng, kích thích hệ xương phát triển và đặc biệt là tăng chiều cao.'),
                AddCart.distanceLogo(),
                AddImages.cartImages('images/yogabai.jpg', MediaQuery.of(context).size.width, MediaQuery.of(context).size.width),
                AddCart.distanceLogo(),
                nodung('Các bước thực hiện như sau:'),
                Container(padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      nodung('Bước 1: Đứng thẳng người, hai tay chắp ngay trước ngực.'),
                      nodung('Bước 2: Đưa tay vòng ra sau đầu đồng thời ngửa người tối đa có thể.'),
                      nodung('Bước 3: Cúi gập người, hai tay ôm cổ chân.'),
                      nodung('Bước 4:Chân phải bước về phía trước, hai tay chống thẳng xuống đất, từ từ hạ đầu gối vuông góc.'),
                      nodung('Bước 5: Hai chân đưa về phía sau, thẳng người'),
                      nodung('Bước 6: Khuỷu tay gập và từ từ hạ cơ thể xuống sao cho trán, mũi và ngực chạm được xuống thảm tập.'),
                      nodung('Bước 7: Hạ chân và hông xuống thảm, tay chống, người từ từ rướn cao.'),
                      nodung('Bước 8: Đưa hông lên cao theo hình chữ V ngược, đầu xuôi theo tay.'),
                      nodung('Bước 9: Lặp lại bước 4, đổi sang chân trái.'),
                      nodung('Bước 10: Lặp lại bước 3.'),
                      nodung('Bước 11: Lặp lại bước 2.'),
                      nodung('Bước 12: Lặp lại bước 1.')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Text nodung(String text){
    return Text(text, style: const TextStyle(fontSize: 16,),textAlign: TextAlign.justify,);
  }
}