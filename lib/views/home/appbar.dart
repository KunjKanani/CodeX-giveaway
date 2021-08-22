import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/logos/protiaa.png",
          height: 50,
          width: 120,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(30),
          ),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: Image.asset(
              "assets/images/Model3.jpg",
              height: 50,
              width: 50,
            ).image,
          ),
        ),
      ],
    );
  }
}
