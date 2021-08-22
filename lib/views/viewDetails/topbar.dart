import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giveaway/model/cardDetails.dart';
import 'package:giveaway/utils/colors.dart';
import 'package:giveaway/utils/helper.dart';

class TopBar extends StatelessWidget {
  final CardDetail? cardDetail;
  final int? index;

  TopBar({this.cardDetail, this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 315,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: cardDetail!.cardColor!,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(1, 7),
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 20,
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white.withOpacity(0.8),
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        getHashTag(
          index: index!,
          horizontalPadding: 20,
          verticalPadding: 60,
        ),
        Container(
          padding: EdgeInsets.only(top: 75, right: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logos/" + cardDetail!.image!,
                    width: 80,
                    height: 80,
                  ),
                  emptyVerticalBox(height: 5),
                  Text(
                    cardDetail!.title!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              emptyVerticalBox(),
              Divider(
                color: Colors.white38,
                indent: 50,
                endIndent: 50,
              ),
              emptyVerticalBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getStatistics(
                    title: cardDetail!.uploadCount.toString(),
                    subTitle: cardDetail!.uploadType!,
                  ),
                  getStatistics(
                    title: cardDetail!.likes!,
                    subTitle: "likes",
                  ),
                  getStatistics(
                    title: cardDetail!.fans!,
                    subTitle: "fans",
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget getStatistics({required String title, required String subTitle}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        emptyVerticalBox(height: 3),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white38,
          ),
        ),
      ],
    );
  }
}
