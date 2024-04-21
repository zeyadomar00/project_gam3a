import 'package:flutter/material.dart';
import 'package:mmm/cont2_order.dart';
import 'package:mmm/coumminty/container_comm.dart';
import 'package:mmm/coumminty/coummuntyEdit.dart';
import 'package:mmm/myOrderEdit.dart';
import 'package:mmm/myOrderEdit3.dart';
import 'package:mmm/myTextFromField.dart';
import 'package:phone_input/phone_input_package.dart';

class communtiy extends StatefulWidget {
  @override
  State<communtiy> createState() => _communtiyState();
}

class _communtiyState extends State<communtiy> {
  GlobalKey<FormState> fromstate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF1FCF3),
        appBar: AppBar(
          backgroundColor: Color(0xffF1FCF3),
          title: Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {}, icon: Image.asset("images/menu.png")),
              ],
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Image.asset("images/sreach.png"))
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "Communities",
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff1B602D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 800,
                    width: 800,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Agricommunity",
                          style: TextStyle(
                            color: Color(0xff1A7431),
                            fontSize: 24,
                            shadows: [
                              Shadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              container_comm(
                                image: "image6.png",
                                text1: "Permaculture Practitioners",
                                text2: "4.300 Members",
                              ),
                              container_comm(
                                image: "image6.png",
                                text1: "Permaculture Practitioners",
                                text2: "4.300 Members",
                              ),
                              container_comm(
                                image: "image6.png",
                                text1: "Permaculture Practitioners",
                                text2: "4.300 Members",
                              ),
                              container_comm(
                                image: "image6.png",
                                text1: "Permaculture Practitioners",
                                text2: "4.300 Members",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "My Communities",
                          style: TextStyle(
                            color: Color(0xff1A7431),
                            fontSize: 24,
                            shadows: [
                              Shadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        coummuntiyEdit(
                          image: "image8.png",
                          text: "Aromatic Plant Growing",
                          text2: "10k Members",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        coummuntiyEdit(
                          image: "image8.png",
                          text: "Aromatic Plant Growing",
                          text2: "10k Members",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
