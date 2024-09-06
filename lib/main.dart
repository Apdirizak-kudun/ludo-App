import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  
  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
    home: test(),

  ));
}
// int ludoNum = 5;

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffef476f),
//       appBar: AppBar(
//         elevation: 16,
//         centerTitle: true,
//         backgroundColor: Color(0xffef476f),
//         title: Text('Ludo App',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//       ),
//       body: Center(
//         child: Row(children: [
//           Expanded(child: Padding(
//             padding: EdgeInsets.only(left: 16.0,right: 16.0),
//             child: InkWell(
//               splashColor: Colors.black,
//               onTap: (){
//                 print('ludo App');
//               },
//               child: Image.asset('images/$ludoNum.png')),
//           )),
//           Expanded(child: Padding(
//             padding: EdgeInsets.only(left: 16.0,right: 16.0),
//             child: InkWell(
//               splashColor: Colors.black,
//               onTap: (){
//                 print('hello sheikh abdi');
//               },
//               child: Image.asset('images/d2.png')),
//           ),)
//         ],),
//       ),

//     );
//   }
// }
class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<test> {
  int luda = 1;
  int ludo=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffef475f),
      appBar: AppBar(
        elevation: 16,
        centerTitle: true,
        backgroundColor: Color(0xffef476f),
        title: Text('Ludo App',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Center(
        child: Row(children: [
          Expanded(child: Padding(
            padding: EdgeInsets.only(left: 16.0,right: 16.0),
            child: InkWell(
              splashColor: Colors.black,
              onTap: (){
                print('ludo App');
                setState(() {
                  luda=Random().nextInt(6)+1;
                  
                });
              },
              child: Image.asset('images/d$luda.png')),
          )),
          Expanded(child: Padding(
            padding: EdgeInsets.only(left: 16.0,right: 16.0),
            child: InkWell(
              splashColor: Colors.black,
              onTap: (){
               setState(() {
                 ludo=Random().nextInt(6)+1;
               });
                print('hello sheikh abdi');
              },
              child: Image.asset('images/d$ludo.png')),
          ),)
        ],),
      ),

    );
  }
}