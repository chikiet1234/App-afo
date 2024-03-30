// ignore_for_file: override_on_non_overriding_member

import 'package:afoflutter/screen/home.dart';
import 'package:afoflutter/widget/spCart.dart';
import 'package:afoflutter/widget/spbutton.dart';
import 'package:flutter/material.dart';



class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/nen.jpg'),
              fit: BoxFit.cover,
            ),            
          ),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                    Center(
                      child: Column(                 
                        children: [
                          SizedBox(
                            height: 350,
                            child: AddCart.cartView(context, cartLogin()),
                          ),
                          const SizedBox(height: 35,),
                          Row(
                            children: [
                              const Expanded(child: Divider(color: Colors.white, thickness: 1,),),
                              Container(
                                margin: const EdgeInsets.only(right: 5, left: 5),
                                child: const Text('or', style: TextStyle(color: Colors.white),),
                              ),
                              const Expanded(child: Divider(color: Colors.white, thickness: 1,))
                          ],),
                          const SizedBox(height: 25,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: const Image(image: AssetImage('images/icgoogle.png'), width: 45,),
                              ),
                              const Image(image: AssetImage('images/facebook.png'), width: 60,)
                            ],
                          )
                        ],)
                    ),
                    Positioned(
                      top: -55,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child:  Container(
                            height: 110,
                            width: 110,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3)
                                )],
                                borderRadius: BorderRadius.circular(200),
                                // image: const DecorationImage(image: AssetImage('images/logo2.png'),fit: BoxFit.cover,),
                            ),
                            child: const Image(image: AssetImage('images/logo2.png'),width: 100, fit: BoxFit.fill,),
                          ),
                        )
                      ))
                ]
              ),
            ],
          )
        ), 
      ),
    );
  }
 @override
 Widget cartLogin(){
   return Column(
    children: [
      const SizedBox(height: 60,),
      SizedBox(
        height: 55,
        child: AddbuttonandInput.inputAccount(email, false ,"email", 12, const Icon(Icons.email)),
      ),
      AddCart.spaceWidget(),
      SizedBox(
        height: 55,
        child: AddbuttonandInput.inputAccount(password,true ,"Password", 12, const Icon(Icons.password)),
      ),
      AddCart.spaceWidget(),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child:  ElevatedButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> const Home()));
          },
          // ignore: sort_child_properties_last
          child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 16),),
          style: ElevatedButton.styleFrom(
            // ignore: deprecated_member_use
            primary: const Color(0xFFFFA007),
          )
        )
      ),
      AddCart.spaceWidget(),
      GestureDetector(
        onTap: (){

        },
        child: Container(
          alignment: Alignment.topRight,
          child: const Text('Quên mật khẩu?', style: TextStyle(fontWeight: FontWeight.w600),),
        ),
      )
    ],
   );
 }
}