import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:flutter/material.dart';



class Newsnew extends StatefulWidget {
  const Newsnew({super.key});

  @override
  State<Newsnew> createState() => _NewsnewState();
}

class _NewsnewState extends State<Newsnew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Tin Tức'),
          AddCart.distanceWidgetCollum(30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddImages.newsPaper(
                    'images/top10thucpham.png',
                    'Top 10 thực phẩm tăng cường phát triển trí não cho bé yêu',
                    context),
                AddCart.distanceWidgetRow(10),
                AddImages.newsPaper('images/theduc.jpg',
                    'Các bài tập thể dục tốt cho tâm trạng trẻ em', context)
              ],
            ),
          ),
          AddCart.distanceWidgetCollum(15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddImages.newsPaper('images/yogatre.png',
                    'Các bài tập yoga tăng chiều cao cho trẻ em', context),
                AddCart.distanceWidgetRow(10),
                AddImages.newsPaper(
                    'images/phuhuynhnen.png',
                    'Những cách cha mẹ nên thử nếu khó kìm chế cảm xúc khi dạy con',
                    context)
              ],
            ),
          ),
          AddCart.distanceWidgetCollum(15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddImages.newsPaper('images/yogatre.png',
                    'Các bài tập yoga tăng chiều cao cho trẻ em', context),
                AddCart.distanceWidgetRow(10),
                AddImages.newsPaper(
                    'images/phuhuynhnen.png',
                    'Những cách cha mẹ nên thử nếu khó kìm chế cảm xúc khi dạy con',
                    context)
              ],
            ),
          ),
          AddCart.distanceWidgetCollum(15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddImages.newsPaper('images/yogatre.png',
                    'Các bài tập yoga tăng chiều cao cho trẻ em', context),
                AddCart.distanceWidgetRow(10),
                AddImages.newsPaper(
                    'images/phuhuynhnen.png',
                    'Những cách cha mẹ nên thử nếu khó kìm chế cảm xúc khi dạy con',
                    context)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
