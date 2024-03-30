// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:js';

import 'package:afoflutter/screen/newsdetail.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';

List<String> listimages = [
  'images/girl01.jpg',
  'images/girl02.jpg',
  'images/girl03.jpg',
  'images/24MN000010.jpg',
  'images/girl04.jpg',
  'images/girl05.jpg'
];

class AddImages {
  static Widget addAvarta(String url, double width) {
    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          image: DecorationImage(
            image: AssetImage(url),
            fit: BoxFit.cover,
          )),
    );
  }

  static Widget addLogo(String url, double width, Color colorText, double fontSize, double margintop) {
    return Row(
      children: [
        Image(
          image: AssetImage(url),
          width: width,
          fit: BoxFit.cover,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 5, top: margintop),
          child: Text(
            'AFO',
            style: TextStyle(color: colorText, fontWeight: FontWeight.w600, fontSize: fontSize,),
          ),
        )
      ],
    );
  }

  static Widget listViewAlbum(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
                itemCount: listimages.length,
                controller:
                    PageController(initialPage: 3, viewportFraction: 0.8),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset(
                      listimages[index],
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  static Widget newsPaper(String images, String news, BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewsDetail()));
      },
      child: Container(
          width: MediaQuery.of(context).size.width / 2 - 30,
          height: 230,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 3))
              ]),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 30,
                height: 160,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                ),
                child: Image(
                  image: AssetImage(images),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                news,
                style: AddText.textNomal(),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )),
    );
  }

  static Widget iconBack(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_circle_left_rounded,
          color: Colors.white,
        ));
  }

  static Widget imageRadius(double height, double width, String url) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover)),
    );
  }

  static Widget cartImages(String image, double height, double width 
    ) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3))
            ],
            borderRadius: const BorderRadius.all(Radius.circular(8))));
  }
}
