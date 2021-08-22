import 'package:flutter/cupertino.dart';

class CardDetail {
  String? image;
  String? title;
  String? handler;
  int? uploadCount;
  String? uploadType;
  String? likes;
  String? fans;
  List<Color>? cardColor;

  CardDetail({
     this.image,
     this.title,
     this.handler,
     this.uploadCount,
     this.uploadType,
     this.fans,
     this.likes,
     this.cardColor,
  });
}
