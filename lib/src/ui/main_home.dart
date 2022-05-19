import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_full_course/src/ui/aminations/animated_cross_fade_example.dart';
import 'package:flutter_full_course/src/ui/aminations/example_screen/builder_cross_fade.dart';
import 'package:flutter_full_course/src/ui/custom_clipping/clip_rect_example.dart';
import 'package:flutter_full_course/src/ui/widgets/example/transaction_list_design.dart';

import 'custom_clipping/clip_r_rect_example.dart';
class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {

  List<String> list =[
    'Cross Fade Animation Example',
    'Animated Cross Fade',
    'Transaction List Design',
    'ClipRect Example',
    'ClipRRect Example'
  ];
  
  
  onListItemTap({int id=0}){
     switch(id){
       case 0:
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BuilderCrossFade()));
         break;
       case 1:
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AnimatedCrossFadeExample()));
         break;
       case 2:
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TransactionListDesign()));
         break;
       case 3:
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ClipRectExample()));
         break;
       case 4:
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ClipRRectExample()));
         break;

     }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => InkWell(
          onTap: (){
            onListItemTap(id: index);
          },
          child: Card(
            elevation: 3,
          child: Container(
              width: size.width,
              height: size.height*0.05,
              color: Colors.blue,
              child: Center(child: Text(list[index],style: TextStyle(fontSize: 20, color: Colors.white),),)),
      ),
        ),),
    );
  }
}
