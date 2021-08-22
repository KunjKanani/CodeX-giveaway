import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giveaway/controller/postDetailController.dart';
import 'package:giveaway/model/cardDetails.dart';
import 'package:giveaway/utils/colors.dart';
import 'package:giveaway/utils/helper.dart';
import 'package:giveaway/views/viewDetails/topbar.dart';
import 'package:line_chart/charts/line-chart.widget.dart';

class ViewDetailsPage extends StatelessWidget {
  final CardDetail? cardDetail;
  final int? index;

  final PostData postData = PostData();

  ViewDetailsPage({this.cardDetail, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Hero(
                tag: 'card'+index.toString(),
                child: Material(
                  type: MaterialType.transparency,
                  child: TopBar(
                    index: index,
                    cardDetail: cardDetail,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: Get.height - 335,
                  child: ListView.builder(
                    itemCount: postData.postDetails.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        height: 70,
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      "assets/posts/" +
                                          postData.postDetails[index].image!,
                                      width: 80,
                                      height: 60,
                                    ),
                                  ),
                                ),
                                emptyHorizontalBox(),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        postData.postDetails[index].title!,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        postData.postDetails[index].date!,
                                        style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Column(
                                children: [
                                  Text(
                                    postData.postDetails[index].like!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: AppColors.chartLineColor,
                                    ),
                                  ),
                                  emptyVerticalBox(height: 6),
                                  LineChart(
                                    width: 40,
                                    height: 10,
                                    data:
                                        postData.postDetails[index].chartData!,
                                    linePaint: Paint()
                                      ..strokeWidth = 2
                                      ..style = PaintingStyle.stroke
                                      ..color = AppColors.chartLineColor,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 30,
            right: 25,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
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
              ),
              child: Icon(Icons.add, color: Colors.white, size: 30,),
            ),
          ),
        ],
      ),
    );
  }
}
