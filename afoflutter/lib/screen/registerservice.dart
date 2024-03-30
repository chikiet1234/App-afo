import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spbutton.dart';
import 'package:afoflutter/widget/spimages.dart';
import 'package:afoflutter/widget/sptext.dart';
import 'package:flutter/material.dart';


class RegisterService extends StatefulWidget {
  const RegisterService({super.key});

  @override
  State<RegisterService> createState() => _RegisterServiceState();
}

class _RegisterServiceState extends State<RegisterService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [
        AddCart.appBar(context, 'Đăng ký'),
        AddCart.distanceWidgetCollum(30),
        AddCart.cartViewItem(150, padingW(register())),
        AddCart.spaceWidget(),
        AddCart.cartViewItem(150, padingW(register())),
        AddCart.spaceWidget(),
        AddCart.cartViewItem(150, padingW(register())),
        AddCart.spaceWidget(),
        AddCart.cartViewItem(150, padingW(register())),
        AddCart.spaceWidget(),      
        padingW(AddbuttonandInput.buttonWeek('Đăng ký', 60, MediaQuery.of(context).size.width - 20,const Color(0xFFFFA007) , Colors.white, 18))
      ],
    ));
  }
  bool isCheckBox = false;
  Padding padingW (Widget widget){
    return Padding(padding: const EdgeInsets.only(left: 10, right: 10), child: widget,);
  }
  Column register(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AddImages.cartImages('images/bus.png', 60, 60),
            Text('Dịch vụ đưa đón', style: AddText.textColorH2(),),
            Checkbox(value: isCheckBox, onChanged: (bool? value){
              setState(() {
                  isCheckBox = value!;
                });
              },
            )
          ],
        ),
        AddCart.distanceWidgetCollum(12),
        Text('Dịch vụ đưa đón hỗ trợ phụ huynh trong việc đưa đón con em đi học khi phụ huynh không thể ngày nào cũng đưa đón em nhỏ đi học được.',
          style: AddText.textNomal(),textAlign: TextAlign.justify,
        )
      ],
    );
  }
}