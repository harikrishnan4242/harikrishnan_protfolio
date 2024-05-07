import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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

  Container tabbar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'H',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.w600,
                      fontSize: 50),
                ),
                Image.asset(
                  'assests/png_assest/devicon-plain_flutter.png',
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
          tabsList()
        ],
      ),
    );
  }

  Column bio(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: 
        EdgeInsets.only(left: 50), child: Text('HARI KRISHNAN', style: TextStyle(fontFamily: 'Kanit', fontWeight: FontWeight.w600, fontSize: 50, color: Color.fromRGBO(76, 75, 74, 10)),),),
        Padding(padding: 
        EdgeInsets.only(left: 50), child: Text('Android and Flutter Developer', style: TextStyle(fontFamily: 'Kanit', fontWeight: FontWeight.w500, fontSize: 40, color: Color.fromRGBO(153, 153, 153, 10)),),),
      ],
    );
  }

  Padding tabsList() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Text(
              'About  ',
              style: TextStyle(
                  color: tabsIndex == 1
                      ? Colors.black
                      : const Color.fromRGBO(153, 153, 153, 100),
                  fontWeight: FontWeight.w600,
                  fontSize: tabsIndex == 1 ? 30 : 28,
                  fontFamily: 'Kanit'),
            ),
          ),
          const SizedBox(
            width: 150,
          ),
          GestureDetector(
            child: Text(
              'Projects',
              style: TextStyle(
                  color: tabsIndex == 2
                      ? Colors.black
                      : const Color.fromRGBO(153, 153, 153, 100),
                  fontWeight: FontWeight.w600,
                  fontSize: tabsIndex == 2 ? 30 : 28,
                  fontFamily: 'Kanit'),
            ),
          ),
          const SizedBox(
            width: 150,
          ),
          GestureDetector(
            child: Text(
              'Contact',
              style: TextStyle(
                  color: tabsIndex == 3
                      ? Colors.black
                      : const Color.fromRGBO(153, 153, 153, 100),
                  fontWeight: FontWeight.w600,
                  fontSize: tabsIndex == 3 ? 30 : 28,
                  fontFamily: 'Kanit'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              tabbar(context),
              const DottedLine(
                lineThickness: 3.0,
                dashLength: 5.0,
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                dashColor: Color.fromRGBO(153, 153, 153, 100),
              ),
              const SizedBox(
                height: 70,
              )
              ,
              bio()
            ],
          ),
        ),
      ),
    );
  }
}
