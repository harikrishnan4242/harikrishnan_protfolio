import 'package:demo_app/Utils/fontstyles.dart';
import 'package:demo_app/screens/aboutscreen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int tabsIndex = 0;
  @override
  void initState() {
    super.initState();
    tabsIndex = 0;
  }

  void changeIndex(int i){
    setState(() {
      tabsIndex = i;
    });
  }
  @override
  Widget build(BuildContext context) {
    return kIsWeb?
    Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: GestureDetector(
            onTap: () => changeIndex(0),
            child: Row(
              children: [ 
                Image.asset('assests/png_assest/AppIcon.png',height: 80,width: 80,),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: ()=>changeIndex(1), child:  Text('About', style: tabsIndex==1?select:deSelect)),
            const SizedBox(width: 80,),
            TextButton(onPressed: ()=>changeIndex(2), child:  Text('Project',style: tabsIndex==2?select:deSelect)),
            const SizedBox(width: 80,),
            TextButton(onPressed: ()=>changeIndex(3), child: Text('Contact',style: tabsIndex==3?select:deSelect,)),
            const SizedBox(width: 80,),
          ],
          bottom: const PreferredSize(preferredSize: Size(double.maxFinite, 10), child: DottedLine(
            dashColor: Color.fromRGBO(153, 153, 153, 10),
            direction: Axis.horizontal,
            lineThickness: 2.0,
            dashLength: 5.0,
          )),
        ),
        body: tabsIndex==0? const  ProfileState():const   AboutState(),
    ):const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
