import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giveaway/controller/cardDetailController.dart';
import 'package:giveaway/model/cardDetails.dart';
import 'package:giveaway/utils/colors.dart';
import 'package:giveaway/utils/helper.dart';
import 'package:giveaway/views/viewDetails/viewDetails.dart';

class CustomCardDesign extends StatelessWidget {
  final CardData _cardData = CardData();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Hero(
            tag: "card"+index.toString(),
            child: Material(
              type: MaterialType.transparency,
              child: getCard(
                index: index,
                cardDetail: _cardData.cardDetails[index],
              ),
            ),
          );
        },
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _cardData.cardDetails.length,
      ),
    );
  }

  Widget getCard({int index = 1, required CardDetail cardDetail}) {
    return Stack(
      children: [
        Container(
          height: 235,
          margin: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: cardDetail.cardColor!,
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
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        getHashTag(index: index),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logos/" + cardDetail.image!,
                width: 80,
                height: 80,
              ),
              // index == 0 ? emptyVerticalBox(height: 10) : Container(),
              Text(
                cardDetail.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "@" + cardDetail.handler!,
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 16,
                ),
              ),
              emptyVerticalBox(height: 15),
              GestureDetector(
                onTap: () {
                  Get.to(
                    () => ViewDetailsPage(
                      cardDetail: cardDetail,
                      index: index,
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white38,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: cardDetail.uploadCount.toString() + " ",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: cardDetail.uploadType,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white38,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "add new",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
