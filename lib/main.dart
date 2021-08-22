import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giveaway/utils/colors.dart';
import 'package:giveaway/utils/helper.dart';
import 'package:giveaway/views/home/appbar.dart';
import 'package:giveaway/views/home/card.dart';
import 'package:giveaway/views/home/searchbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Column(
                  children: [
                    CustomAppbar(),
                    emptyVerticalBox(height: 45),
                    SearchBar(),
                    emptyVerticalBox(height: 30),
                    CustomCardDesign()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
