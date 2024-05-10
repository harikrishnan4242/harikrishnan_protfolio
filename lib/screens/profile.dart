import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ProfileState extends StatefulWidget {
  const ProfileState({super.key});

  @override
  State<ProfileState> createState() => ProfileScreen();
}

class ProfileScreen extends State<ProfileState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
              top: 50,
              left: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HARI KRISHNAN',
                    style: TextStyle(
                      color: Color.fromRGBO(76, 75, 74, 10),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Kanit',
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'Android And Flutter developer',
                    style: TextStyle(
                        shadows: [
                          Shadow(
                              offset: Offset(2, 1),
                              blurRadius: 3,
                              color: Color.fromRGBO(153, 153, 153, 80))
                        ],
                        color: Color.fromRGBO(153, 153, 153, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        fontFamily: 'Kanit',
                        letterSpacing: 5.0),
                  )
                ],
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.79,
            child: Image.asset(
              'assests/png_assest/mobile.png',
              width: MediaQuery.of(context).size.width / 2.4,
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 4.9,
              left: MediaQuery.of(context).size.width / 2.307,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1,
                child: const DottedLine(
                  dashColor: Color.fromRGBO(153, 153, 153, 10),
                  direction: Axis.vertical,
                  lineThickness: 3.0,
                  dashLength: 5.0,
                ),
              )),
          Positioned(
              left: MediaQuery.of(context).size.width / 1.88,
              top: MediaQuery.of(context).size.height / 7.89,
              bottom: 0,
              child: Image.asset(
                'assests/png_assest/pc.png',
                width: MediaQuery.of(context).size.width /1.2,
                height: MediaQuery.of(context).size.height / 0.5,
                fit: BoxFit.fill,
              ))
        ],
      ),
    );
  }
}
