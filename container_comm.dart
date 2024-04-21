import 'package:flutter/material.dart';

class container_comm extends StatefulWidget {
  final String image;
  final String text1;
  final String text2;

  container_comm({
    required this.image,
    required this.text1,
    required this.text2,
  });

  @override
  State<container_comm> createState() => _container_commState();
}

class _container_commState extends State<container_comm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Color(0xffF1FCF3),
      margin: EdgeInsets.all(8),
      child: ListView(
        children: [
          Column(
            children: [
              Image.asset(
                "images/${widget.image}",
                width: 190,
                fit: BoxFit.fill,
              ),
              Text("${widget.text1}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "images/person.png",
                      // height: 5,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("${widget.text2}"),
                ],
              ),
              Container(
                color: Color(0xffF2F2F2),
                child: Text(
                  "Join Now",
                  style: TextStyle(color: Color(0XFF4F795B)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
