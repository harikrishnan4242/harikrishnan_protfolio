import 'package:flutter/material.dart';

class AboutState extends StatefulWidget {
  const AboutState({super.key});
  @override
  State<AboutState> createState() => AboutScreen();
}

class AboutScreen extends State<AboutState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/18,
                    height: MediaQuery.of(context).size.height/12,
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assests/png_assest/work_icon.png'),fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Work Experience',
                    style: TextStyle(
                        color: Color.fromRGBO(76, 75, 74, 10),
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                        fontFamily: 'Kanit'),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'BYTECOMPASS LLP',
                style: TextStyle(
                    color: Color.fromRGBO(76, 75, 74, 10),
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.w500,
                    fontSize: 35),
              )
            ],
          )
        ],
      ),
    ));
  }
}
