import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

emptyVerticalBox({double height = 20}) => SizedBox(height: height);
emptyHorizontalBox({double width = 20}) => SizedBox(width: width);

getHashTag({int index = 0, double verticalPadding = 15, double horizontalPadding = 15}) {
  return Align(
    alignment: Alignment.topRight,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      child: Text(
        "#" + (index + 1).toString(),
        style: TextStyle(
          color: Colors.black12,
          fontSize: 100,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}