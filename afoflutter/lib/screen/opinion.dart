import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spbutton.dart';
import 'package:flutter/material.dart';



class Opinion extends StatefulWidget {
  const Opinion({super.key});

  @override
  State<Opinion> createState() => _OpinionState();
}

class _OpinionState extends State<Opinion> {
  TextEditingController chattext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddCart.appBar(context, 'Trao đổi ý kiến'),
          AddCart.distanceWidgetCollum(30),
          AddCart.cartViewItem(MediaQuery.of(context).size.height - 190, formchat()),
          AddCart.distanceWidgetCollum(10),
          AddCart.cartViewItem(50, AddbuttonandInput.inputAccount(chattext, false, 'Tin nhắn', 12, Icon(Icons.send))),
        ],
      ),
    );
  }
  Container formchat(){
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          chat(),
          AddCart.spaceWidget(),
          chat(),
          AddCart.spaceWidget(),
          chat(),
          AddCart.spaceWidget(),
          chat(),
          AddCart.spaceWidget(),
          chat(),
          AddCart.spaceWidget(),
        ],
      )
    );
  }
  Container chat(){
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Câu hỏi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
          const Padding(padding: const EdgeInsets.only(left:  10), 
            child: Text('Cha mẹ có quyền xem camera lúc con ngủ không', style: TextStyle(fontSize: 16),),
          ),
          AddCart.distanceLogo(),
          // Expanded(child: Divider(color: Color(0xFFBABABA), thickness: 1,)),
          AddCart.grais(),
          const Text("Câu trả lời", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
          const Padding(padding: const EdgeInsets.only(left:  10), 
            child: Text('Cha mẹ có quyền', style: TextStyle(fontSize: 16),),
          ),
        ],
      ),
    );
  }
  
}